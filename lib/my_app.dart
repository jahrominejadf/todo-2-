import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:todolist/home/binding/home_page_binding.dart';
import 'package:todolist/home/binding/second_page_binding.dart';
import 'package:todolist/home/view/home_page.dart';
import 'package:todolist/home/view/second_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.pageRoute,
      getPages: [
        GetPage(name: HomePage.pageRoute, page: () =>  HomePage(),
        binding: HomePageBinding(),
        children:[
        GetPage(name: SecondPage.SecondPages,page: () => SecondPage(),
        binding: SecondPageBinding()),
     ],
    ),] );

  }
}
