import 'package:flutter/material.dart';
import 'package:getxcontrolleruniqueidexample/GetViewCountController.dart';
import 'package:get/get.dart';

class GetViewAndGetWidgetExample extends GetView<GetViewCountController> {

  @override
  Widget build(BuildContext context) {

    Get.put(GetViewCountController());
    // Get.create(() => GetViewCountController());

    return Scaffold(
      appBar: AppBar(
        title: Text("GetX GetView"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
              "count的值为:  ${controller?.count}",
              style: TextStyle(
                color: Colors.red,
                fontSize: 30
              ),
            )),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () {
                  controller.increment();
                },
                child: Text("点我加1"))
          ],
        ),
      ),
    );
  }
}