import 'package:flutter/material.dart';
import 'package:plus_project/pages/first_page.dart';
import 'package:plus_project/pages/page_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage(),
      routes: {
        FirstPage.id: (context) => FirstPage(),
        Page2.id:(context)=> Page2(),
      },
    );
  }
}
