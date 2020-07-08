import 'package:flutter/material.dart';
import 'package:flutter_common_views/list_home_page.dart';
import 'package:flutter_common_views/page/base_page.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BasePage(title: 'Home', stateBuilder:()=>ListHomeState()),
    );
  }
}
