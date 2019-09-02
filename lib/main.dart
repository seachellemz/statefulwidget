import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String str = "Hello";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initState:  I was initialized");
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(str),
            ),
            FlatButton(
              child: Text("Change Text"),
              onPressed: () {
                str="HI";
                print("Value of str:  " + str);
                setState(() {
                  
                });

              },
            )

          ]
        )
      )
      
    );
  }
}