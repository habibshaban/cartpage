import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tabsi/pages/home/home_page/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tabsi test',
      theme: ThemeData(
        fontFamily: "Muli",
        primaryColor: Color(0xFFFF7643),
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
