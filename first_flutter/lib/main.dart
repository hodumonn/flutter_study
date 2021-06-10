//라이브러리를 가져와야 flutter 프레임워크 사용 가능하다.
import 'package:flutter/material.dart';

//앱의 시작점
//runApp : 최상위 함수라서 한번만 실행된다.괄호 안에는 위젯이 들어온다.
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

//Scaffold가 없으면 앱 화면 배치를 전혀 할 수 없다.
//하나의 요소라도 동적이면 StatefulWidget을 사용해야한다.
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter First App')),
      body: Center(
        child: Column(
          children: [Text('Hello'), Text('Hello'), Text('Hello')],
        ),
      ),
    );
  }
}
