import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todolist/home/controller/home_page_controller.dart';
import 'package:todolist/home/view/second_page.dart';
import '../../main.dart';
import '../controller/second_page_controller.dart';

class HomePage extends GetView<HomePageController> {
  var homePageController= HomePageController();

   HomePage({super.key});
  final HomePageController myController = Get.put(HomePageController());

  static const String pageRoute = '/';

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('well come'),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            String? result = await Get.to<String>(SecondPage());
            if (result != null) {
              Get.find<HomePageController>().addData(result);
            }
          },
          child: Text('Add+'),
        ),
      ),
      bottomNavigationBar: Obx(() => Container(
            height: 150,
            child: ListView.builder(
              itemCount: myController.dataList.length,
              itemBuilder: (context, index) {
                return CardItem(index: index, homePageController: homePageController,);

              },

            ),
          )),
    );
  }
}