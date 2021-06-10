//라이브러리를 가져와야 flutter 프레임워크 사용 가능하다.
import 'package:flutter/material.dart';

//앱의 시작점
//runApp : 최상위 함수라서 한번만 실행된다.괄호 안에는 위젯이 들어온다.
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First Flutter',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[300],
      appBar: AppBar(
        title: Text('About Me'),
        backgroundColor: Colors.deepOrange[200],
        elevation: 0.0, //입체감 제거
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/hj1.PNG'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[850],
              thickness: 0.8,
              endIndent: 30.0,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'HUIJU SEO',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'BIRTHDAY(AGE)',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '1993.05.21(29)',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 20.0,
                ),
                Text('Java',
                    style: TextStyle(fontSize: 16.0, letterSpacing: 1.0)),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 20.0,
                ),
                Text('JavaScript',
                    style: TextStyle(fontSize: 16.0, letterSpacing: 1.0)),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 20.0,
                ),
                Text('RDBMS',
                    style: TextStyle(fontSize: 16.0, letterSpacing: 1.0)),
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/hj2.PNG'),
                radius: 40.0,
                backgroundColor: Colors.deepOrange[300],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Scaffold가 없으면 앱 화면 배치를 전혀 할 수 없다.
//하나의 요소라도 동적이면 StatefulWidget을 사용해야한다.
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Flutter First App')),
//       body: Center(
//         child: Column(
//           children: [Text('Hello'), Text('Hello'), Text('Hello')],
//         ),
//       ),
//     );
//   }
// }
