import 'package:get/get.dart';
import 'package:todolist/home/controller/second_page_controller.dart';

class SecondPageBinding extends Bindings {
  @override
  void dependencies() {
      Get.lazyPut(() => SecondPageController());
  }

  }