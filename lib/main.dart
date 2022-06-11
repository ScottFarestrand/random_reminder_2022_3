import 'package:flutter/material.dart';
import './screens/landing.dart';
// import './screens/personal_info.dart';
// import './screens/people.dart';
// import './screens/person.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: Colors.lightBlue,
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: Landing.id,
      routes: {
        Landing.id: (context) => Landing(),
        // Screen_2.id: (context) => Screen_2(),
        // Screen_3.id: (context) => Screen_3(),
      },
    );
  }

}

