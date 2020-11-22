import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Agecny extends StatefulWidget {
  @override
  _AgecnyState createState() => _AgecnyState();
}

class _AgecnyState extends State<Agecny> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 60),
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.blue)),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search by Location",
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                          prefixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.black,
                      height: 55,
                      width: 55,
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          "img/iconSearch.svg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 255),
              child: Text(
                "Primuime Agencies",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            ...List(2).map((e) => Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 230, top: 10),
                      child: Text(
                        "Recommended Properties",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Container(
                      height: 300,
                      child: ListView.builder(
                        padding:
                            EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Material(
                                  elevation: 4,
                                  child: Stack(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 40, left: 16),
                                        child: Text(
                                          "The Address investments",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 64, left: 16),
                                        child: Row(
                                          children: <Widget>[
                                            Imagee(
                                              url: "map",
                                              size: 10,
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              "Cairo,Mostakbal City - Future...",
                                              style: TextStyle(
                                                  color: Colors.black12),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 100, left: 18),
                                        child: Row(
                                          children: <Widget>[
                                            Text(
                                              "RESALE",
                                              style: TextStyle(
                                                color: Colors.black12,
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            Text(
                                              "1200",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "PROJECT",
                                              style: TextStyle(
                                                color: Colors.black12,
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            Text(
                                              "120",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 130, left: 16),
                                        child: Text(
                                          "SERVICE AREAS",
                                          style:
                                              TextStyle(color: Colors.black12),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 150, left: 16),
                                        child: Text(
                                          "Mostakbal City,Azahraa Nasr,New",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 164, left: 16),
                                        child: Text(
                                          "Cairo,Maedi",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 200,
                                            left: 16,
                                            right: 20,
                                            bottom: 20),
                                        child: Row(
                                          children: <Widget>[
                                            RaisedButton(
                                              onPressed: () {},
                                              child: Text(
                                                "Call",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              color: Colors.black,
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            RaisedButton(
                                              onPressed: () {},
                                              child: Text(
                                                "EMAIL",
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                              color: Colors.white,
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                )),
          ].toList(),
        ),
      ),
    );
  }
}

class Imagee extends StatelessWidget {
  final double top, left, size;
  final url;

  Imagee({this.left = 0, this.top = 0, this.url, this.size});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: top, left: left),
      child: SvgPicture.asset(
        "img/$url.svg",
        height: size,
        width: size,
        fit: BoxFit.fill,
      ),
    );
  }
}
