import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    goToMain(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(0.0, 0.0),
        child: Container(),
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Image.asset(
          "assets/icon/icon.png",
          height: 200,
          width: 200,
        ),
      ),
    );
  }

  void goToMain(BuildContext ctx) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(ctx).pushReplacementNamed('/home');
    });
  }
}
