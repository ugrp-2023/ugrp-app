import 'package:flutter/material.dart';
import 'main.dart' ;
import 'disaster_image.dart' ;
import 'package:webview_flutter/webview_flutter.dart';


class manual_page extends StatefulWidget {
  const manual_page({super.key});

  @override
  State<manual_page> createState() => _manual_pageState();
}

class _manual_pageState extends State<manual_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("오프라인 매뉴얼")),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 5),
              Text("인터넷 연결이 안될 시, 아래에서 매뉴얼을 찾을 수 있습니다.",style: TextStyle(fontWeight: FontWeight.w600),),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> daebi_image()));
                },
                child: Text("재난대비",style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                 minimumSize: Size(600,50),
                 backgroundColor: const Color.fromARGB(255, 253, 201, 122),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 3.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  padding: EdgeInsets.all(  5.0),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )),
                  
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> terror_image()));
                },
                child: Text("테러",style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                 minimumSize: Size(600,50),
                 backgroundColor: const Color.fromARGB(255, 253, 201, 122),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 3.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  padding: EdgeInsets.all(  5.0),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )),
                  
              ),
              SizedBox(height: 10),
              
              ElevatedButton(
                onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> earthquake_image()));
                },
                child: Text("지진",style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                 minimumSize: Size(600,50),
                 backgroundColor: const Color.fromARGB(255, 253, 201, 122),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 3.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  padding: EdgeInsets.all(  5.0),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )),
                  
              ),
              SizedBox(height: 10),         
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> fire_image()));
                },
                child: Text("화재",style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                 minimumSize: Size(600,50),
                 backgroundColor: const Color.fromARGB(255, 253, 201, 122),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 3.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  padding: EdgeInsets.all(  5.0),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )),
                  
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> taepung_image()));
                },
                child: Text("태풍 호우",style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                 minimumSize: Size(600,50),
                 backgroundColor: const Color.fromARGB(255, 253, 201, 122),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 3.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  padding: EdgeInsets.all(  5.0),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )),         
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> collapse_image()));
                },
                child: Text("건축물 붕괴",style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                 minimumSize: Size(600,50),
                 backgroundColor: const Color.fromARGB(255, 253, 201, 122),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 3.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  padding: EdgeInsets.all(  5.0),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )),
                  
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> mountain_image()));
                },
                child: Text("산불 및 산사태",style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                 minimumSize: Size(600,50),
                 backgroundColor: const Color.fromARGB(255, 253, 201, 122),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 3.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  padding: EdgeInsets.all(  5.0),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )),
                  
              ),
                       
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> emergency_image()));
                },
                child: Text("응급처치",style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                 minimumSize: Size(600,50),
                 backgroundColor: const Color.fromARGB(255, 253, 201, 122),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 3.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  padding: EdgeInsets.all(  5.0),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )),
                  
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> traffic_image()));
                },
                child: Text("교통사고",style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                 minimumSize: Size(600,50),
                 backgroundColor: const Color.fromARGB(255, 253, 201, 122),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 3.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  padding: EdgeInsets.all(  5.0),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )),
                  
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> hot_image()));
                },
                child: Text("폭염 및 가뭄",style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                 minimumSize: Size(600,50),
                 backgroundColor: const Color.fromARGB(255, 253, 201, 122),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 3.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  padding: EdgeInsets.all(  5.0),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )),
                  
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> concert_image()));
                },
                child: Text("공연장안전",style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                 minimumSize: Size(600,50),
                 backgroundColor: const Color.fromARGB(255, 253, 201, 122),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 3.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  padding: EdgeInsets.all(  5.0),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )),
                  
              ),
              SizedBox(height: 10),






              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> volcano_image()));
                },
                child: Text("화산재 낙하",style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                 minimumSize: Size(600,50),
                 backgroundColor: const Color.fromARGB(255, 253, 201, 122),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 3.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  padding: EdgeInsets.all(  5.0),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )),
                  
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> train_image()));
                },
                child: Text("철도 사고",style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                 minimumSize: Size(600,50),
                 backgroundColor: const Color.fromARGB(255, 253, 201, 122),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 3.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  padding: EdgeInsets.all(  5.0),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )),
                  
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> chemi_image()));
                },
                child: Text("화학 및 방사선사고",style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                 minimumSize: Size(600,50),
                 backgroundColor: const Color.fromARGB(255, 253, 201, 122),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 3.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  padding: EdgeInsets.all(  5.0),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )),
                  
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> elec_image()));
                },
                child: Text("전기사고",style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                 minimumSize: Size(600,50),
                 backgroundColor: const Color.fromARGB(255, 253, 201, 122),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 3.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  padding: EdgeInsets.all(  5.0),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )),
                  
              ),
              SizedBox(height: 10),
              
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> gong_image()));
                },
                child: Text("공동구사고",style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                 minimumSize: Size(600,50),
                 backgroundColor: const Color.fromARGB(255, 253, 201, 122),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 3.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  padding: EdgeInsets.all(  5.0),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )),
                  
              ),
              SizedBox(height: 10),
              
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> water_image()));
                },
                child: Text("식용수 사고",style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                 minimumSize: Size(600,50),
                 backgroundColor: const Color.fromARGB(255, 253, 201, 122),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 3.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  padding: EdgeInsets.all(  5.0),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )),
                  
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> sig_image()));
                },
                child: Text("식중독",style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                 minimumSize: Size(600,50),
                 backgroundColor: const Color.fromARGB(255, 253, 201, 122),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 3.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  padding: EdgeInsets.all(  5.0),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )),
                  
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> child_image()));
                },
                child: Text("어린이안전",style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                 minimumSize: Size(600,50),
                 backgroundColor: const Color.fromARGB(255, 253, 201, 122),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 3.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  padding: EdgeInsets.all(  5.0),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )),
                  
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> sea_image()));
                },
                child: Text("물놀이 안전",style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                 minimumSize: Size(600,50),
                 backgroundColor: const Color.fromARGB(255, 253, 201, 122),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 3.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  padding: EdgeInsets.all(  5.0),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )),
                  
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> snow_image()));
                },
                child: Text("대설 및 한파",style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                 minimumSize: Size(600,50),
                 backgroundColor: const Color.fromARGB(255, 253, 201, 122),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 3.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  padding: EdgeInsets.all(  5.0),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )),
                  
              ),
              SizedBox(height: 10),
              
              
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> nak_image()));
                },
                child: Text("낙뢰",style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                 minimumSize: Size(600,50),
                 backgroundColor: const Color.fromARGB(255, 253, 201, 122),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 3.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  padding: EdgeInsets.all(  5.0),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )),
                  
              ),
              SizedBox(height: 10),
          
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> dirt_image()));
                },
                child: Text("황사,미세먼지",style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                 minimumSize: Size(600,50),
                 backgroundColor: const Color.fromARGB(255, 253, 201, 122),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 3.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  padding: EdgeInsets.all(  5.0),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )),
                  
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> security_image()));
                },
                child: Text("생활안전",style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                 minimumSize: Size(600,50),
                 backgroundColor: const Color.fromARGB(255, 253, 201, 122),
                  shadowColor: const Color.fromARGB(255, 0, 0, 0),
                  elevation: 3.0,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                  padding: EdgeInsets.all(  5.0),
                  side: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )),
                  
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}




class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  var controller_home=routepage("https://m.safekorea.go.kr/idsiSFK/neo/main_m/main.html#" );

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () async {
              if (await controller_home.canGoBack()) {
                controller_home.goBack();
              } 
            },
          ),
          
        title:Text("홈")),
      body: WebViewWidget(controller: controller_home),
    );
  }
}



class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  var controller=routepage("https://m.safekorea.go.kr/idsiSFK/neo/main_m/set/emergencySit.html");

  @override
   Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: appbarWidget("비상사태", controller),
      body: WebViewWidget(controller: controller),
    );
  }
}

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  var controller=routepage("https://m.safekorea.go.kr/idsiSFK/neo/main_m/sot/terror.html");

  @override
   Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: appbarWidget("테러", controller),
      body: WebViewWidget(controller: controller),
    );
  }
}

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  var controller=routepage("https://m.safekorea.go.kr/idsiSFK/neo/main_m/set/CBP.html");

  @override
   Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: appbarWidget("화생방", controller),
      body: WebViewWidget(controller: controller),
    );
  }
}

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  var controller=routepage("https://m.safekorea.go.kr/idsiSFK/neo/main_m/set/civilAirDefence.html");

  @override
   Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: appbarWidget("민방공", controller),
      body: WebViewWidget(controller: controller),
    );
  }
}

class Page6 extends StatefulWidget {
  const Page6({super.key});

  @override
  State<Page6> createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  var controller=routepage("https://m.safekorea.go.kr/idsiSFK/neo/main_m/sot/fire.html");

  @override
   Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: appbarWidget("화재", controller),
      body: WebViewWidget(controller: controller),
    );
  }
}

class Page7 extends StatefulWidget {
  const Page7({super.key});

  @override
  State<Page7> createState() => _Page7State();
}

class _Page7State extends State<Page7> {
  var controller=routepage("https://m.safekorea.go.kr/idsiSFK/neo/main_m/nat/earthquake.html");

  @override
   Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: appbarWidget("지진", controller),
      body: WebViewWidget(controller: controller),
    );
  }
}

class Page8 extends StatefulWidget {
  const Page8({super.key});

  @override
  State<Page8> createState() => _Page8State();
}

class _Page8State extends State<Page8> {
  var controller=routepage("https://m.safekorea.go.kr/idsiSFK/neo/main_m/sot/building.html");

  @override
   Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: appbarWidget("붕괴", controller),
      body: WebViewWidget(controller: controller),
    );
  }
}

class Page9 extends StatefulWidget {
  const Page9({super.key});

  @override
  State<Page9> createState() => _Page9State();
}

class _Page9State extends State<Page9> {
  var controller=routepage("https://m.safekorea.go.kr/idsiSFK/neo/main_m/sot/explosion.html");

  @override
   Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: appbarWidget("폭발", controller),
      body: WebViewWidget(controller: controller),
    );
  }
}

class Page10 extends StatefulWidget {
  const Page10({super.key});

  @override
  State<Page10> createState() => _Page10State();
}

class _Page10State extends State<Page10> {
  var controller=routepage("https://m.safekorea.go.kr/idsiSFK/neo/main_m/nat/typhoon.html");

  @override
   Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: appbarWidget("태풍", controller),
      body: WebViewWidget(controller: controller),
    );
  }
}

class Page11 extends StatefulWidget {
  const Page11({super.key});

  @override
  State<Page11> createState() => _Page11State();
}

class _Page11State extends State<Page11> {
  var controller=routepage("https://m.safekorea.go.kr/idsiSFK/neo/main_m/sot/forestFire.html");

  @override
   Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: appbarWidget("산불", controller),
      body: WebViewWidget(controller: controller),
    );
  }
}

class Page12 extends StatefulWidget {
  const Page12({super.key});

  @override
  State<Page12> createState() => _Page12State();
}

class _Page12State extends State<Page12> {
  var controller=routepage("https://m.safekorea.go.kr/idsiSFK/neo/main_m/nat/landSlide.html");

  @override
   Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: appbarWidget("산사태", controller),
      body: WebViewWidget(controller: controller),
    );
  }
}

class Page13 extends StatefulWidget {
  const Page13({super.key});

  @override
  State<Page13> createState() => _Page13State();
}

class _Page13State extends State<Page13> {
  var controller=routepage("https://m.safekorea.go.kr/idsiSFK/neo/main_m/nat/flood.html");

  @override
   Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: appbarWidget("홍수", controller),
      body: WebViewWidget(controller: controller),
    );
  }
}

class Page14 extends StatefulWidget {
  const Page14({super.key});

  @override
  State<Page14> createState() => _Page14State();
}

class _Page14State extends State<Page14> {
  var controller=routepage("https://m.safekorea.go.kr/idsiSFK/neo/main_m/nat/downpour.html");

  @override
   Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: appbarWidget("호우", controller),
      body: WebViewWidget(controller: controller),
    );
  }
}

class Page15 extends StatefulWidget {
  const Page15({super.key});

  @override
  State<Page15> createState() => _Page15State();
}

class _Page15State extends State<Page15> {
  var controller=routepage("https://m.safekorea.go.kr/idsiSFK/neo/main_m/nat/heatWave.html");

  @override
   Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: appbarWidget("폭염", controller),
      body: WebViewWidget(controller: controller),
    );
  }
}

class Page16 extends StatefulWidget {
  const Page16({super.key});

  @override
  State<Page16> createState() => _Page16State();
}

class _Page16State extends State<Page16> {
  var controller=routepage("https://m.safekorea.go.kr/idsiSFK/neo/main_m/nat/heavySnow.html");

  @override
   Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: appbarWidget("대설", controller),
      body: WebViewWidget(controller: controller),
    );
  }
}

class Page17 extends StatefulWidget {
  const Page17({super.key});

  @override
  State<Page17> createState() => _Page17State();
}

class _Page17State extends State<Page17> {
  var controller=routepage("https://m.safekorea.go.kr/idsiSFK/neo/main_m/nat/coldWave.html");

  @override
   Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: appbarWidget("한파", controller),
      body: WebViewWidget(controller: controller),
    );
  }
}

class Page18 extends StatefulWidget {
  const Page18({super.key});

  @override
  State<Page18> createState() => _Page18State();
}

class _Page18State extends State<Page18> {
  var controller=routepage("https://m.safekorea.go.kr/idsiSFK/neo/main_m/lit/findDust.html");

  @override
   Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: appbarWidget("미세먼지", controller),
      body: WebViewWidget(controller: controller),
    );
  }
}

class Page19 extends StatefulWidget {
  const Page19({super.key});

  @override
  State<Page19> createState() => _Page19State();
}

class _Page19State extends State<Page19> {
  var controller=routepage("https://m.safekorea.go.kr/idsiSFK/neo/main_m/lit/traffic.html");

  @override
   Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: appbarWidget("교통", controller),
      body: WebViewWidget(controller: controller),
    );
  }
}

class Page20 extends StatefulWidget {
  const Page20({super.key});

  @override
  State<Page20> createState() => _Page20State();
}

class _Page20State extends State<Page20> {
  var controller=routepage("https://m.safekorea.go.kr/idsiSFK/neo/main_m/nat/tsunami.html");

  @override
   Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: appbarWidget("지진해일", controller),
      body: WebViewWidget(controller: controller),
    );
  }
}

class Page21 extends StatefulWidget {
  const Page21({super.key});

  @override
  State<Page21> createState() => _Page21State();
}

class _Page21State extends State<Page21> {
  var controller=routepage("https://m.safekorea.go.kr/idsiSFK/neo/main_m/nat/volcano.html");

  @override
   Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: appbarWidget("화산폭발", controller),
      body: WebViewWidget(controller: controller),
    );
  }
}



PreferredSizeWidget appbarWidget(String str,var controller){
  return AppBar(
        leading:
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () async {
              if (await controller.canGoBack()) {
                controller.goBack();   // 스와이프해서 back 만들기
              } 
            },
          ),
          
        title:Text(str));
}