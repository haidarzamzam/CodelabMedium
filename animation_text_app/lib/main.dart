import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo AnimatedText'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(width: 20.0, height: 100),
            Text(
              "Harus : ",
              style: TextStyle(fontSize: 40.0),
            ),
            SizedBox(height: 100),
            SizedBox(
              height: 100,
              child: RotateAnimatedTextKit(
                  text: ["SENYUM","SALAM", "SAPA", "SOPAN", "SANTUN"],
                  textStyle: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start
              ),
            ),
          ],
        )
    );
  }
}
