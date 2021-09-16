import 'package:flutter/material.dart';

class LogoBuhoHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 127,
        left: MediaQuery.of(context).size.width * 0.33,
        child: Container(
          height: 90,
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/favicon.png'),
              fit: BoxFit.fill,
            ),
          ),
        ));
  }
}
