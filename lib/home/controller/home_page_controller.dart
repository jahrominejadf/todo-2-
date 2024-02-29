import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
 class HomePageController extends GetxController{
  final dataList = <String>[].obs;

  void addData(String data) {
  dataList.add(data);
  }

  void removeData(int index) {
  dataList.removeAt(index);
  }

  void editData(int index, String editedData) {
  }
  }
class EditPage extends StatelessWidget {
 final int index;
 final TextEditingController subtitleController = TextEditingController();
 final TextEditingController infoController = TextEditingController();

 EditPage({required this.index});

 @override
 Widget build(BuildContext context) {
  HomePageController myController = Get.find<HomePageController>();

  subtitleController.text = myController.dataList[index].split(':')[0];
  infoController.text = myController.dataList[index].split(':')[1].trim();

  return Scaffold(
   appBar: AppBar(
    title: Text('ویرایش اطلاعات'),
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
        labelText: 'اطلاعات',
       ),
      ),
      SizedBox(height: 20),
      ElevatedButton(
       onPressed: () {
        String editedData = subtitleController.text + ': ' + infoController.text;
        myController.editData(index, editedData);
        Get.back();
        Get.snackbar(
         'پیام',
         'ویرایش با موفقیت انجام شد',
         backgroundColor: Colors.green,
         colorText: Colors.white,
        );
       },
       child: Text('ثبت تغییرات'),
      ),
     ],
    ),
   ),
  );
 }

  void editData(int index, String s) {

  }
}

