import 'package:cocineros_al_vacio/landing/landing.dart';
import 'package:cocineros_al_vacio/navbar/nabvar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Stack(
          fit: StackFit.expand,
          // alignment: Alignment.topCenter,
          children: [
            Image.asset(
              'assets/images/background_food.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Container(
              color: Colors.black.withOpacity(0.8),
            ),
            Column(children: [
              Navbar(),
              Landing(),
            ]),
          ]),
    );
  }
}
