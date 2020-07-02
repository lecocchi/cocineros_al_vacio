import 'dart:math';

import 'package:cocineros_al_vacio/widgets/e-commerce/ecommerce.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  bool _startDelivery;

  @override
  void initState() {
    super.initState();
    _startDelivery = false;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ECommerce()
                // Container(
                //   height: constraints.biggest.height / 2,
                //   padding: EdgeInsets.only(bottom: 25),
                //   child: Column(
                //     children: [
                //       Spacer(),
                //       TweenAnimationBuilder<double>(
                //         tween: Tween(begin: 0.0, end: 1.0),
                //         duration: Duration(seconds: 3),
                //         onEnd: () {
                //           setState(() {
                //             _startDelivery = true;
                //           });
                //         },
                //         builder: (context, value, child) => Opacity(
                //           opacity: value,
                //           child: _buildText(),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // _startDelivery
                //     ? _buildDelivery(constraints.biggest.height / 2)
                //     : Container(
                //         height: constraints.biggest.height / 2,
                //       ),
              ]);
        },
      ),
    );
  }

  Widget _buildText() {
    const style = TextStyle(
        color: Colors.white, fontSize: 50, fontStyle: FontStyle.italic);

    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
            text: 'Una manera diferente \nde comer comidas \n', style: style),
        TextSpan(
            text: 'Ricas',
            style: TextStyle(
                color: Colors.green, fontSize: 50, fontStyle: FontStyle.italic)),
        TextSpan(text: ' y ', style: style),
        TextSpan(
            text: 'Sanas',
            style: TextStyle(
                color: Colors.blue,
                fontSize: 50,
                fontStyle: FontStyle.italic)),
      ]),
    );
  }

  Widget _buildDelivery(double height) {
    return Container(
      height: height,
      child: TweenAnimationBuilder<double>(
        tween: Tween(begin: 1000, end: 0),
        duration: Duration(milliseconds: 1000),
        curve: Curves.decelerate,
        builder: (context, value, child) {
          return Transform.translate(
            offset: Offset(value, 0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/moto.png',
                  width: 125,
                  height: 125 * 1.15,
                ),
                MaterialButton(
                  child: Text(
                    'Hace tu pedido',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  color: Colors.green,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
