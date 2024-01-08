import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
//import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'notification.dart';
import 'disaster_class.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
//import 'webpage.dart';
//import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart' as sqflite_ffi;
import 'dart:async';
import 'disaster_page.dart';
import 'chatbot_manual.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
//import 'package:permission_handler/permission_handler.dart';
 


int currentPageIndex= 0;
StreamController<String> streamController = StreamController.broadcast();
late SharedPreferences disaster_setting;
var disList=['폭동', '테러', '화재', '지진', '붕괴', '폭발', '태풍', '산불', '홍수', '호우', '폭염', '대설', '한파', '기타','교통', '민방공', '산사태', '비상사태', '미세먼지',  '지진해일', '화산폭발', '화생방사고']; // 재난 리스트
List<bool> switchVal=[];
bool note=false;
var disasterRepository; //전역변수로 설정해서 빠르다
String uid='0';
int isLoading = 0;








@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();

 // print("Handling a background message: ${message.messageId}");
}



void main() async {

  sqflite_ffi.sqfliteFfiInit();
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseOptions firebaseOptions = FirebaseOptions(
    apiKey: '',
    appId: '',
    messagingSenderId: '',
    projectId: '',
    databaseURL: '',
    storageBucket: '',
  );

  await Firebase.initializeApp(options: firebaseOptions);
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  
  var database = openDatabase(
  join(await getDatabasesPath(), 'disasters.db'),
  onCreate: (db, version) {
    // Run the CREATE TABLE statement on the database.
    return db.execute(
      'CREATE TABLE disasters(id INTEGER PRIMARY KEY, location TEXT)',
    );
  },
  version: 1,
  );

  //var token = await FirebaseMessaging.instance.getToken();

  // print("token : ${token ?? 'token NULL!'}");

  
  
  FlutterLocalNotification.onBackgroundNotificationResponse();
  initialpr();


  final FirebaseAuth _auth = FirebaseAuth.instance;

// 익명 인증으로 사용자 등록
  UserCredential userCredential = await _auth.signInAnonymously();
// UID 가져오기
  uid = userCredential.user!.uid;
  runApp(MyApp(database: database));
}

class MyApp extends StatelessWidget {
  final Future<Database> database; 
  

  MyApp({required this.database});

  @override
  Widget build(BuildContext context) {  
    return MaterialApp(
      title: 'Realtime Database App',
      theme: ThemeData(
        
        primarySwatch: Colors.orange,
        brightness: Brightness.light,
        
      ),
      home: FutureBuilder<Database>(
        future: database,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator(); // 데이터베이스 연결 대기 중에 로딩 표시
          }
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }
          if (snapshot.hasData) {
            disasterRepository = DisasterRepository(snapshot.data!); // DisasterRepository 인스턴스 생성
            return WebViewer();
          }
          return Text('No Data');
        },
      ),
    );
  }
}

class WebViewer extends StatefulWidget {
  //final DisasterRepository _disasterRepository; // DisasterRepository 인스턴스 전달을 위한 변수 추가

  //WebViewer(this._disasterRepository); // 생성자 수정
  
  @override
  _WebViewerState createState() => _WebViewerState(); // 생성자에 인스턴스 전달
}

class _WebViewerState extends State<WebViewer> {

  //final DisasterRepository _disasterRepository;
  //_WebViewerState(this._disasterRepository);

  



  @override
  void initState() {

    
    FlutterLocalNotification.init();
    Future.delayed(const Duration(seconds: 1),
        FlutterLocalNotification.requestNotificationPermission()); 
        // 권한 허가 실행이 되긴 하는데 알림을 보내는 순간에 권한을 요구함
    super.initState();
    
    // Set up a listener for database changes
    // 종류에 따른 데이터베이스 커넥트, 태그 설정 기능 추가 완료, 갱신 확인 완료
    for(int i=0; i< disList.length; i++){
     dbConnect(disList[i]);
    }


    
  }

  @override
  void dispose() {
    streamController.close();
    super.dispose();
  }

  /*void dbConnect(String disaster)  {

      FirebaseDatabase.instance.ref(disaster).onChildAdded.listen((event) async {
        // 새로운 데이터 처리
        final newValue = event.snapshot.value;
        bool tag = disaster_setting.getBool(disaster) ?? true;
        if (newValue is Map && newValue.containsKey('contents')) {
          final contents = newValue['contents'] as String;
          final time = newValue['time'] as String;
          final date = newValue['date'] as String;
          final id = newValue['id'] as String;
          int idint= int.parse(id);
          final location = newValue['location'] as String;
          print('새로운 데이터 추가: $contents \n');

          if (await _disasterRepository.insertDisaster( Disaster(id: idint , location: location))) {
            Set<String> allKeys = disaster_setting.getKeys();
            //송출지역 긁어와서 변환시키는 과정이 필요, 파이썬 코드와 플러터 둘다 추가해야함
            if(allKeys.toString().contains(location)||allKeys.toString().contains('전국')){
            print('새로운 데이터 추가: $contents \n');
            if(tag){ 
              FlutterLocalNotification.showNotification(disList.indexOf(disaster),'$location: 재난 $disaster 발생 발생일자: $date $time', contents,disaster);
              }
            }
            
          }
        }
      });
    
  }*/
  
   Widget _bottomNavigationBar() {
      return BottomNavigationBar(
        unselectedItemColor: Colors.grey,
    onTap: (int index){ 
      setState(() {
        currentPageIndex = index;
      });
        
      },
    currentIndex: currentPageIndex,
    selectedItemColor: Colors.black,
    showUnselectedLabels: true,
    items: [
      
      BottomNavigationBarItem(
        icon: Icon(Icons.manage_search_outlined),
        label: '재난 매뉴얼',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search_off_outlined),
        label: '오프라인 매뉴얼',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.android),
        label: '챗봇',
      ),
      /*
      BottomNavigationBarItem(
        icon: Icon(Icons.phone_android),
        label: '챗봇_브리핑',
      ),*/
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: '세팅',
      ),
    ],
  );
}


  @override
  Widget build(BuildContext context) {
  return WillPopScope(
    child: Scaffold(
      resizeToAvoidBottomInset: false,
      body:StreamBuilder<String>(
        //! Stream을 전달합니다.
        stream: streamController.stream,
        builder: (context, snapshot) {

          //! snapshot을 통해 데이터를 확인합니다.
          if (snapshot.hasError) {
            return Container(); 
          }
          if (snapshot.hasData&&note) {   // 알림이 온 상태라면 인덱스에 따라 진행되는 게 아님
            note= false;
            if(snapshot.data=='비상사태'){  // 여기에다가 페이지 라우팅해주고, 새로운 페이지 만들면 됨
            return Page2(); }
            if(snapshot.data=='폭동'||snapshot.data=='테러'){
            return Page3();}
            if(snapshot.data=='화생방사고'){
            return Page4();}
             if(snapshot.data=='민방공'){
            return Page5();}
            if(snapshot.data=='화재'){
            return Page6();}
            if(snapshot.data=='지진'){
            return Page7();}
            if(snapshot.data=='붕괴'){
            return Page8();}
            if(snapshot.data=='폭발'){
            return Page9();}
            if(snapshot.data=='태풍'){
            return Page10();}
            if(snapshot.data=='산불'){
            return Page11();}
            if(snapshot.data=='산사태'){
            return Page12();}
            if(snapshot.data=='홍수'){
            return Page13();}
            if(snapshot.data=='호우'){
            return Page14();}
            if(snapshot.data=='폭염'){
            return Page15();}
            if(snapshot.data=='대설'){
            return Page16();}
            if(snapshot.data=='한파'){
            return Page17();}
            if(snapshot.data=='미세먼지'){
            return Page18();}
            if(snapshot.data=='교통통제'||snapshot.data=='교통사고'||snapshot.data=='교통'){
            return Page19();}
            if(snapshot.data=='지진해일'){
            return Page20();}
            if(snapshot.data=='화산폭발'){
            return Page21();}

          }
          else{
            switch(currentPageIndex){
            case 0: return Page1(); //홈
            case 1: return manual_page();
            case 2: return chatbot_manual(); 
            //case 3: return chatbot_brief(); 
            case 3: return setting_page();  
            }
          }
          return Page1();

          }
        ),
      bottomNavigationBar: _bottomNavigationBar(),
      ),
      onWillPop: () {
        {return Future(() => false);} // app quit을 막기 위한 뒤로가기 밴
      },
  );
  }

}







WebViewController routepage(String str){
  var controller = WebViewController()
  
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..setBackgroundColor(const Color(0x00000000))
  ..setNavigationDelegate(
    NavigationDelegate(
      onProgress: (int progress) {
        // Update loading bar.
      },
      onPageStarted: (String url) {},
      onPageFinished: (String url) {},
      onWebResourceError: (WebResourceError error) {},
      onNavigationRequest: (NavigationRequest request) {
        return NavigationDecision.navigate;
      },
    ),
  )
  ..loadRequest(Uri.parse(str));

  return controller;
  
}

Future <void> initialpr() async{
    disaster_setting = await SharedPreferences.getInstance();
    if(disaster_setting.getBool('지진')==null){
      for (String element in disList){
        await disaster_setting.setBool(element, true);  // 처음 설정, 없으면 스위치들 만들어줌
      }
    }
     // 처음 설정이 아니라면 스위치 밸류 조정
      for (String element in disList){
        if (disaster_setting.getBool(element)==true){
          switchVal.add(true);
        }
        else{
          switchVal.add(false);
        }
      }
    

  }


void dbConnect(String disaster)  {
      FirebaseDatabase.instance.ref(disaster).onChildAdded.listen((event) async {
        // 새로운 데이터 처리
        final newValue = event.snapshot.value;
        bool tag = disaster_setting.getBool(disaster) ?? true;
        if (newValue is Map && newValue.containsKey('contents')) {
          final contents = newValue['contents'] as String;
          final time = newValue['time'] as String;
          final date = newValue['date'] as String;
          final id = newValue['id'] as String;
          int idint= int.parse(id);
          List<String> location = (newValue['location'] as List).cast<String>();

          if (await disasterRepository.insertDisaster( Disaster(id: idint , location: location[0]))) {
            Set<String> allKeys = disaster_setting.getKeys();
            
            //bool result = allKeys.any((element2) => location.any((element1) => element1.contains(element2)));
            bool result= hasSubstring(allKeys, location);
            if(result||allKeys.toString().contains('전국')){
              if(tag){ 
                FlutterLocalNotification.showNotification(disList.indexOf(disaster),'재난 $disaster 발생 발생일자: $date $time', contents,disaster);
                }
            }
            
          }
        }
      });
    
  }


bool hasSubstring(Set<String> list1, List<String> list2) {
  for (String str2 in list2) {
    for (String str1 in list1) {

      if (str2.contains(str1)) {
        return true;
      }
    }
  }
  return false;
}




