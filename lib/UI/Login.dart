import 'package:drug/UI/interested_Category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  color: Color(0xffF9F9F9),
                  height: 300,
                  width: double.infinity,
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 200, top: 2),
                        child: SvgPicture.asset(
                          "img/logo.svg",
                          height: 400,
                          width: 300,
                          fit: BoxFit.fill,
                          color: Color(0xffDFDFDF),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 90, left: 20),
                        child: SvgPicture.asset(
                          "img/logo.svg",
                          height: 50,
                          width: 50,
                          fit: BoxFit.fill,
                          color: Color(0xff1A1919),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 160, left: 22),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color(0xff1A1919)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 190, left: 20),
                        child: Text(
                          "With Your Social Network",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff9D9D9D),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 240, left: 16),
                            child: Container(
                              width: 118,
                              height: 40,
                              child: RaisedButton(
                                  color: Colors.white,
                                  child: Text(
                                    "f",
                                    style: TextStyle(
                                        color: Color(0xff2C59CE),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                  onPressed: () {}),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 240, left: 16),
                            child: Container(
                              width: 118,
                              height: 40,
                              child: RaisedButton(
                                  color: Colors.white,
                                  child: Text(
                                    "G",
                                    style: TextStyle(
                                        color: Color(0xffCA2B2B),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                  onPressed: () {}),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 240, left: 16, right: 16),
                            child: Container(
                              width: 118,
                              height: 40,
                              child: RaisedButton(
                                  color: Colors.white,
                                  child: Text(
                                    "t",
                                    style: TextStyle(
                                        color: Color(0xff2C59CE),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                  onPressed: () {}),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              height: 1,
                              width: 130,
                              color: Color(0xffCACACA),
                            ),
                            Container(
                              height: 20,
                              child: Text(
                                "Or",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              color: Colors.transparent,
                            ),
                            Container(
                              height: 1,
                              width: 130,
                              color: Color(0xffCACACA),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 36,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 32, right: 32),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "TEST@GMAIL.COM",
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0)),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 32, right: 32),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "PASSWORD",
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0)),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24, left: 16),
                        child: Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Checkbox(
                                  value: value,
                                  onChanged: (v) {
                                    setState(() {
                                      value = v;
                                    });
                                  },
                                ),
                                Text(
                                  "Keep Me Login",
                                  style: TextStyle(color: Color(0xff9D9D9D)),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 132,
                            ),
                            FlatButton(
                              onPressed: () {},
                              child: Text(
                                "Forget Password ?",
                                style: TextStyle(
                                  color: Color(0xff9D9D9D),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 100, left: 30, right: 30),
                        child: Container(
                          width: double.infinity,
                          height: 48,
                          color: Color(0xff1A1919),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (_) => interestedCategory()));
                            },
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(color: Color(0xffFFFFFF)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40, left: 130),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Not A Member ? ",
                              style: TextStyle(color: Color(0xff9D9D9D)),
                            ),
                            FlatButton(
                              onPressed: () {},
                              child: Text(
                                "Sing Up",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  bool value = false;
}
