import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.redAccent,
      child: Center(
        child: Text('No disponible por el momento\npara celulares y tablets',
            style: TextStyle(color: Colors.white, fontSize: 20), textAlign: TextAlign.center,),
      ),
    );
  }
}
