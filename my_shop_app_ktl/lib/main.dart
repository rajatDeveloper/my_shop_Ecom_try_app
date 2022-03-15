import 'package:flutter/material.dart';
import 'package:my_shop_app_ktl/screen/home_page/view/home_page.dart';
import 'package:my_shop_app_ktl/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(primaryColor: Colors.white),
        initialRoute: MyRoutes.homeRoute,
        routes: {
          //home is defined route
          // "/": (context) => LoginPage(),
          MyRoutes.homeRoute: (context) => HomePage(),
          // MyRoutes.loginRoute: (context) => LoginPage(),
          // MyRoutes.cartRoute: (context) => CartPage(),
        });
  }
}

// 14 to start 
