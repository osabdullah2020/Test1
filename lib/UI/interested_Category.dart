import 'package:drug/UI/HomePage.dart';
import 'package:drug/UI/NavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class interestedCategory extends StatefulWidget {
  @override
  _interestedCategoryState createState() => _interestedCategoryState();
}

class _interestedCategoryState extends State<interestedCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 352,
              width: double.infinity,
              color: Color(0xffF3F3F3),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 168, top: 2),
                    child: SvgPicture.asset(
                      "img/logo.svg",
                      height: 400,
                      width: 300,
                      fit: BoxFit.fill,
                      color: Color(0xffDFDFDF),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 90, bottom: 35),
                    child: Center(
                      child: SvgPicture.asset(
                        "img/interested.svg",
                        height: 200,
                        width: 184,
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  Text(
                    "Choose Interested Category ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 16),
                        height: 40,
                        width: 180,
                        child: RaisedButton(
                          color: Color(0xffF3F3F3),
                          onPressed: () {},
                          child: Center(
                            child: Text("#Residential"),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16),
                        height: 40,
                        width: 180,
                        child: RaisedButton(
                          color: Color(0xffF3F3F3),
                          onPressed: () {},
                          child: Center(child: Text("#Commercial")),
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 16),
                        height: 40,
                        width: 180,
                        child: RaisedButton(
                          color: Color(0xffF3F3F3),
                          onPressed: () {},
                          child: Center(
                            child: Text("#Coastal"),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16),
                        height: 40,
                        width: 180,
                        child: RaisedButton(
                          color: Color(0xffF3F3F3),
                          onPressed: () {},
                          child: Center(child: Text("#Coastal")),
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 106, right: 106),
                      child: RaisedButton(
                        color: Color(0xffF3F3F3),
                        onPressed: () {},
                        child: Center(child: Text("#Coastal")),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 114, left: 30, right: 30),
                    child: Container(
                      width: double.infinity,
                      height: 48,
                      color: Color(0xff1A1919),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => NavigationBar()));
                        },
                        child: Center(
                          child: Text(
                            "Next",
                            style: TextStyle(color: Color(0xffFFFFFF)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  FlatButton(
                    child: Text(
                      "Skip",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
