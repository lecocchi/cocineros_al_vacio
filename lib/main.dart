import 'package:cocineros_al_vacio/Utils/error_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Utils/SizeScreen.dart';
import 'home/home_screen.dart';

void main() => runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cocineros al vacío',
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveScreen(
        smart: HomeScreen(),
        desktop: HomeScreen(),
        tablet: ErrorScreen(),
        phone: ErrorScreen(),
      ),
    );
  }
}
