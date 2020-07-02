import 'package:flutter/material.dart';

class ECommerce extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      duration: const Duration(milliseconds: 3000),
      tween: Tween(begin: 0.0, end: 500.0),
      curve: Curves.bounceInOut,
      builder: (context, value, child) => Transform.translate(
        offset: Offset(value, 0),
        child: Container(
          width: 100,
          child: Stack(
            children: [
              Image.asset(
                'assets/images/e-commerce.png',
                color: Colors.white,
                width: 75,
              ),
              Positioned(
                right: 10,
                child: Container(
                  width: 30,
                  height: 30,
                  // padding: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    // shape: BoxShape.circle,
                  ),
                  child: Column(
                    crossAxisAlignment:  CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '1',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                        // textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10,)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
