import 'package:drug/UI/Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Spalsh extends StatefulWidget {
  @override
  _SpalshState createState() => _SpalshState();
}

class _SpalshState extends State<Spalsh> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => Login()));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff1A1919),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 280),
                child: SvgPicture.asset(
                  "img/logo.svg",
                  color: Color(0xff4E4E4C),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 280),
                child: Text(
                  "THE  ADDREES",
                  style: TextStyle(
                    color: Color(0xff4E4E4C),
                    letterSpacing: 10,
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
