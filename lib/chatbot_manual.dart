


import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';
import 'main.dart';
//https://ugrpai.pythonanywhere.com/chat
import 'package:webview_flutter/webview_flutter.dart';
//import 'disaster_page.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:permission_handler/permission_handler.dart';



class chatbot_manual extends StatefulWidget {
  const chatbot_manual({super.key});

  @override
  State<chatbot_manual> createState() => _chatbot_manualState();
}

class _chatbot_manualState extends State<chatbot_manual> {
  var controller = routepage("https://ugrpai.pythonanywhere.com/chat/$uid");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget("챗봇", controller),
      body: WebViewWidget(controller: controller),
    );
  }

  AppBar appbarWidget(String title, WebViewController controller) {
    return AppBar(
      title: Text(title),
      actions: [
        IconButton(
          icon: Icon(Icons.refresh),
          onPressed: () {
            // 새로고침 버튼이 눌렸을 때의 동작을 여기에 추가하세요.
            controller.reload();
          },
        ),
      ],
    );
  }
}


/*
class chatbot_manual extends StatelessWidget {
  const chatbot_manual({super.key});
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("챗봇")),
    );
  }
}
*/

class chatbot_brief extends StatelessWidget {
  const chatbot_brief({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("챗봇_브리핑")),
    );
  }
}






class setting_page extends StatefulWidget {
  const setting_page({super.key});

  @override
  State<setting_page> createState() => _setting_pageState();
}

class _setting_pageState extends State<setting_page>  {

  Set<String> filteredKeys={};
  Set<String> allKeys={};
  TextEditingController textController = TextEditingController();

  @override
  void initState()  {  
    super.initState();
    loadPreferences(); // 변경된 초기화 메서드 호출
  }

  Future<void> loadPreferences() async {
    textController.text = '';
    // 아래 코드를 추가하여 모든 키 값을 불러와 출력합니다.
   allKeys = disaster_setting.getKeys();
   filteredKeys = allKeys.where((key) {
   dynamic value = disaster_setting.get(key);
      if (value is String) {
        return value == 'true';
      }
      return false; // 다른 타입의 값은 필터링하지 않음
    }).toSet();

  }

  Future<void> savePreferences() async {
    String inputText = textController.text;
    if(inputText!=''){
    await disaster_setting.setString(inputText, 'true');}
  }

  

  Future<void> saveTag() async {
    setState(() {
      isLoading = 1; // 작업 시작 시 로딩 상태로 변경
    });

    for(int i=0; i< disList.length; i++){
      await disaster_setting.setBool(disList[i], switchVal[i]);
      bool? result= disaster_setting.getBool(disList[i]);
      if(result==true){
        await FirebaseMessaging.instance.subscribeToTopic("$i");
        print("구독");
      }
      else{
        await FirebaseMessaging.instance.unsubscribeFromTopic("$i");
        print("구독해지");
      }
    }

    try{
      setState(() {
      isLoading = 2; // 작업 완료 시 로딩 상태 해제
      });
    }
    catch(error){
      print('오류 발생: $error');
      setState(() {
      isLoading = 2; // 작업 완료 시 로딩 상태 해제
      });
    }
    
  }

  Future<void> _checkAndRequestNotificationPermission() async {
    // 알림 권한 확인
    var status = await Permission.notification.status;

    // 권한 상태에 따른 처리
    if (status.isGranted) {
      // 이미 권한이 승인된 경우
      print('Notification permission already granted');
    } else {
      // 권한이 거부되었거나 아직 요청되지 않은 경우
      var result = await Permission.notification.request();

      if (result.isGranted) {
        print('Notification permission granted');
      } else {
        print('Notification permission denied');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    int a=(disList.length/2).toInt();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('설정'),
    
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '문자 수신 지역 입력:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              TextField(
                controller: textController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ex) 포항시 / 경상북도 포항시 /경상북도',
                ),
              ),
              SizedBox(height: 20),
              Row( // Row를 추가하여 버튼을 오른쪽에 배치합니다.
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      savePreferences();
                      loadPreferences(); // 저장 후에 데이터를 다시 불러와서 키 목록을 출력합니다.
                    },
                    child: Text('지역 저장'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          loadPreferences();
                          return AlertDialog(
                            title: Text('수신 지역 목록'),
                            content: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(filteredKeys.toString()),
                                ],
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(); // 팝업 창 닫기
                                },
                                child: Text('닫기'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text('수신 지역 목록'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      loadPreferences();
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('지역 삭제'),
                            content: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: filteredKeys.map((key) {
                                  return ElevatedButton(
                                    onPressed: () async {
                                      await disaster_setting.remove(key); // 해당 키를 삭제합니다.
                                      loadPreferences(); // 삭제 후에 데이터를 다시 불러옵니다.
                                      Navigator.of(context).pop(); // 팝업 창 닫기
                                    },
                                    child: Text('삭제: $key'),
                                  );
                                }).toList(),
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop(); // 팝업 창 닫기
                                },
                                child: Text('닫기'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text('지역 삭제'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "수신할 재난 알림",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 10),  // 간격 조절용 SizedBox를 추가하여 텍스트와 버튼 사이에 간격을 조절
                  ElevatedButton(
                    onPressed: () {
                      saveTag();
                    },
                    child: Text("재난 설정 저장"),
                  ),
                  if(isLoading==0)
                    Text(""),
                  if(isLoading==1)
                    Text(" 저장 중..."),
                  if(isLoading==2)
                    Text(" 저장 완료"), 
                ],
              ),

              //Text("수신할 재난 알림",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              //SizedBox(height: 20),
              for (int i = 0; i < disList.length/2; i++)                      
                Row(
                  children: [
                    Row(
                      children: [
                        Switch(
                          value: switchVal[i], // 스위치의 초기값 설정
                          onChanged: (value) {
                            setState(() {
                              
                              switchVal[i]=value;
                              value=switchVal[i];
                              isLoading=0;
                              //saveTag();                                 
                            });
                            setState(() {});
                          },
                        ),
                        SizedBox(width: 8), // 간격 조절
                        Text(disList[i],style: TextStyle(color: Colors.black,fontSize: 15)),
                      ],
                    ),
                    Row(
                      children: [
                        Switch(
                          value: switchVal[i+a], // 스위치의 초기값 설정
                          onChanged: (value) {
                            setState(() {                         
                              switchVal[i+a]=value;
                              value=switchVal[i+a];
                              isLoading=0;
                              //saveTag();                                 
                            });
                            setState(() {});
                          },
                        ),
                        SizedBox(width: 8), // 간격 조절
                        Text(disList[i+a],style: TextStyle(color: Colors.black,fontSize: 15)),
                      ],
                    ),
                  ],
                ),
            ],
            
          ),
          
        ),
      ),
    );
  }
}