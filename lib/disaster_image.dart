import 'package:flutter/material.dart';




class earthquake_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("지진")),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/재난/지진.jpg'),  // 이미지 1
              Image.asset('assets/재난/지진2.jpg'),  // 이미지 2
            ],
          ),
        ),
    );
  }
}

class taepung_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("태풍호우")),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/재난/태풍호우.jpg'),  // 이미지 1  
            ],
          ),
        ),
    );
  }
}

class fire_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("화재")),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/재난/화재 대처.jpg'), 
              Image.asset('assets/재난/화재대처2.jpg'),
              Image.asset('assets/재난/화재진압3.jpg'),
              Image.asset('assets/재난/소화기.jpg'),
              Image.asset('assets/재난/소화전.jpg'),
            ],
          ),
        ),
    );
  }
}

class collapse_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("붕괴 사고")),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/재난/건축물 붕괴.jpg'), 
              Image.asset('assets/재난/건축물붕괴2.jpg'),
              Image.asset('assets/재난/건축물붕괴3.jpg'),
              Image.asset('assets/재난/댐붕괴.jpg'), 
            ],
          ),
        ),
    );
  }
}

class terror_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("테러")),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/재난/테러.jpg'), 
            ],
          ),
        ),
    );
  }
}

class daebi_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("재난대비")),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/재난/비상대비.jpg'),
              Image.asset('assets/재난/재난대비.jpg'),
              Image.asset('assets/재난/재난대비2.jpg'), 
            ],
          ),
        ),
    );
  }
}

class mountain_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("산불 및 산사태")),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/재난/산불.jpg'),
              Image.asset('assets/재난/산사태.jpg'), 
            ],
          ),
        ),
    );
  }
}

class volcano_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("화산재 낙하")),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/재난/화산재 낙하.jpg'), 
            ],
          ),
        ),
    );
  }
}

class train_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("고속철도사고")),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/재난/고속철도사고.jpg'),
              Image.asset('assets/재난/지하철 사고.jpg'),  
            ],
          ),
        ),
    );
  }
}

class chemi_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("화학 및 방사선 사고")),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/재난/화학물질사고.jpg'), 
              Image.asset('assets/재난/방사선 누출사고.jpg'), 
            ],
          ),
        ),
    );
  }
}

class gong_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("공동구사고")),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/재난/공동구 사고.jpg'), 
            ],
          ),
        ),
    );
  }
}

class traffic_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("교통사고")),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/재난/교통사고.jpg'),
              Image.asset('assets/재난/도로터널사고.jpg'), 
            ],
          ),
        ),
    );
  }
}

class elec_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("전기사고")),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/재난/전기사고.jpg'),
              Image.asset('assets/재난/전기사고2.jpg'),
              Image.asset('assets/재난/전기안전.jpg'), 
            ],
          ),
        ),
    );
  }
}

class emergency_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("응급처치")),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/재난/심폐소생술.jpg'),
              Image.asset('assets/재난/심폐소생술2.jpg'),
              Image.asset('assets/재난/하임리히법,동물사고.jpg'),
            ],
          ),
        ),
    );
  }
}

class sig_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("식중독")),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/재난/식중독.jpg'),
              Image.asset('assets/재난/식중독2.jpg'),
              Image.asset('assets/재난/식중독3.jpg'),
            ],
          ),
        ),
    );
  }
}

class snow_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("대설 및 한파")),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/재난/대설.jpg'),
              Image.asset('assets/재난/한파.jpg'),
            ],
          ),
        ),
    );
  }
}

class hot_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("폭염 및 가뭄")),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/재난/폭염.jpg'),
              Image.asset('assets/재난/가뭄.jpg'),
            ],
          ),
        ),
    );
  }
}
class dirt_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("황사 및 미세먼지")),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/재난/황사.jpg'),
            ],
          ),
        ),
    );
  }
}

class child_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("어린이 안전")),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/재난/실종유괴예방.jpg'),
              Image.asset('assets/재난/어린이 생활안전.jpg'),
              Image.asset('assets/재난/어린이생활안전.jpg'),
              Image.asset('assets/재난/어린이생활안전2.jpg'),
              Image.asset('assets/재난/어린이생활안전3.jpg'),
              Image.asset('assets/재난/어린이놀이시설.jpg'),
            ],
          ),
        ),
    );
  }
}

class concert_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("공연장 안전")),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/재난/공연장안전.jpg'),
              Image.asset('assets/재난/지역축제장안전.jpg'),
            ],
          ),
        ),
    );
  }
}

class water_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("생활 용수")),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/재난/단수.jpg'),
              Image.asset('assets/재난/대규모 수질오염.jpg'),
              Image.asset('assets/재난/식용수오염.jpg'),
              Image.asset('assets/재난/해양오염사고.jpg'),
            ],
          ),
        ),
    );
  }
}

class nak_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("낙뢰")),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/재난/낙뢰.jpg'),
             
            ],
          ),
        ),
    );
  }
}
class sea_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("물놀이 안전")),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/재난/물놀이안전.jpg'),
              Image.asset('assets/재난/선박사고.jpg'),
              Image.asset('assets/재난/수상레저.jpg'),
              Image.asset('assets/재난/낚시안전.jpg'),
              Image.asset('assets/재난/낚시안전2.jpg'),
            ],
          ),
        ),
    );
  }
}
class security_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("생활 안전")),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/재난/감염병.jpg'),
              Image.asset('assets/재난/가축질병.jpg'),
              Image.asset('assets/재난/승강기안전.jpg'),
              Image.asset('assets/재난/야영장안전.jpg'),
              Image.asset('assets/재난/자전거안전.jpg'),
            ],
          ),
        ),
    );
  }
}