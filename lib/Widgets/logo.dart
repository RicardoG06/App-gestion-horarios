import 'package:flutter/material.dart';

class LogoHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 30,
        left: MediaQuery.of(context).size.width * 0.19,
        child: Container(
          height: 80,
          width: 250,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/logo-manantial.png'),
              fit: BoxFit.fill,
            ),
          ),
        ));
  }
}
