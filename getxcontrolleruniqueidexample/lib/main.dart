import 'package:flutter/material.dart';
import 'package:getxcontrolleruniqueidexample/GetXControllerUniqueIDExample.dart';
import 'package:getxcontrolleruniqueidexample/GetXControllerLifecycleMethodExample.dart';
import 'package:getxcontrolleruniqueidexample/GetXControllerExample.dart';
import 'package:getxcontrolleruniqueidexample/GetXControllerWorkersExample.dart';
import 'package:getxcontrolleruniqueidexample/GetXUtilsExample.dart';
import 'package:getxcontrolleruniqueidexample/GetViewAndGetWidgetExample.dart';
import 'package:get/get.dart';
void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GetX",
      home: GetViewAndGetWidgetExample(),
    );
  }
}
