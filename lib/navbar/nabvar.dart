import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset('assets/images/logo.jpg', width: 90)),
            Spacer(),
            _buildMenu(),
          ]),
    );
  }

  Widget _buildMenu() {
    const style = TextStyle(
        color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold);

    return Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Text('Cómo funciona', style: style),
      SizedBox(width: 20),
      Text('Concepto \"Al Vacío\"', style: style),
      SizedBox(width: 20),
      Text('Quiénes Somos', style: style),
      SizedBox(width: 20),
      _buildNetworkSocial('assets/images/instagram.png'),
      SizedBox(width: 20),
      _buildNetworkSocial('assets/images/facebook.png'),
      SizedBox(width: 20),
      _buildNetworkSocial('assets/images/twitter.png'),
    ]);
  }

  Widget _buildNetworkSocial(String path) {
    return ClipRRect(
      child: Image.asset(path, width: 40),
      borderRadius: BorderRadius.circular(20),
    );
  }
}
