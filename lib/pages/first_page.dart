import 'package:flutter/material.dart';
import 'package:plus_project/pages/page_2.dart';

class FirstPage extends StatefulWidget {
  static const String id = "first_page";

  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tasbeh"),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  count = 0;
                });
              },
              icon: Icon(
                Icons.refresh,
                size: 33,
              )),
          SizedBox(
            width: 20,
          ),
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, Page2.id);
            },
            icon: Icon(
              Icons.android_rounded,
              size: 33,
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Center(
        child: Text(
          count.toString(),
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,

        onPressed: () {
          setState(() {
            if(count==33){
              count=0;
            }
            count++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
