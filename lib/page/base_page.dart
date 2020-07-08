import 'package:flutter/material.dart';

typedef StateBuilder = BasePageState Function();
class BasePage extends StatefulWidget {
  BasePage({this.title, this.stateBuilder = null});

  final String title;
  final StateBuilder stateBuilder;

  @override
  BasePageState createState() {
    if (this.stateBuilder != null) {
      return this.stateBuilder();
    } else {
      return BasePageState();
    }
  }
}

class BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the ListHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: onBuildBody());
  }

  Widget onBuildBody() {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'The example of : ${widget.title}',
              style: TextStyle(color: Colors.red, fontSize: 30),
            ),
          ],
        ),
      );
  }
}
