import 'package:flutter/material.dart';
import 'package:plus_project/pages/first_page.dart';
class Page2 extends StatefulWidget {
  static const String id="page_2";
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Tuzuvchi: Ibrokhimov.S.Q ",style: TextStyle(fontSize: 30),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushReplacementNamed(context, FirstPage.id);
        },
        child: Icon(Icons.home_outlined),
      ),
    );
  }
}
