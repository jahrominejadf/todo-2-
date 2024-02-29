import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/second_page_controller.dart';

class SecondPage extends GetView<SecondPageController> {
  final TextEditingController subtitleController = TextEditingController();
  final TextEditingController infoController = TextEditingController();
  static const String SecondPages = '/second-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: subtitleController,
              decoration: InputDecoration(
                labelText: 'Subtitle',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: infoController,
              decoration: InputDecoration(
                labelText: 'discription',
              ),
            ),
            SizedBox(height: 20),
            Row(children: [
              Expanded(child:
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  String data =
                      subtitleController.text + ': ' + infoController.text;
                  Get.back(result: data);
                  //اینجا میخوام کدرو برگردونم صفحه هوم پیج
                },

                child: Text('submit'),
              ),)],)
          ],
        ),
      ),
    );
  }
}