import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                top: 52,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "SAERCHING IN",
                    style: TextStyle(color: Color(0xff9D9D9D)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset(
                    "img/imgicon.svg",
                    height: 16,
                    width: 16,
                    fit: BoxFit.fill,
                    color: Color(0xff1A1919),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "NEW PROJECTS > ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search by Location",
                          border: OutlineInputBorder(
                           borderSide: BorderSide.none
                          ),
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
                "Neighborhood For Yor",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              height: 100,
              child: ListView.builder(
                  itemCount: 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 16, top: 10),
                      child: Row(
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                child: Image.asset(
                                  "img/image.jpg",
                                  fit: BoxFit.fill,
                                ),
                                height: 80,
                                width: 200,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Text(
                                  "NEW CAPITAL ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 40, left: 34),
                                child: Text(
                                  "145 Unit",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Stack(
                            children: <Widget>[
                              Container(
                                child: Image.asset(
                                  "img/image1.jpg",
                                  fit: BoxFit.fill,
                                ),
                                height: 80,
                                width: 200,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Text(
                                  "NEW CAPITAL ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 40, left: 34),
                                child: Text(
                                  "145 Unit",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Stack(
                            children: <Widget>[
                              Container(
                                child: Image.asset(
                                  "img/image2.jpg",
                                  fit: BoxFit.fill,
                                ),
                                height: 80,
                                width: 200,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(25.0),
                                child: Text(
                                  "NEW CAPITAL ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 40, left: 34),
                                child: Text(
                                  "145 Unit",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 24,
            ),
            ...List(2).map((e) => Column(children: <Widget>[Padding(
              padding: const EdgeInsets.only(right: 230,top: 10),
              child: Text(
                "Recommended Properties",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
              SizedBox(height: 10,),
              Container(
                height: 300,
                child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Material(
                            elevation: 4,

                          child: Stack(
                            children: <Widget>[
                              Container(
                                child: SizedBox(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 8, right: 8, left: 8, bottom: 130),
                                    child: Carousel(
                                      images: [
                                        Image.asset(
                                          "img/image.jpg",
                                          fit: BoxFit.fill,
                                        ),
                                        Image.asset(
                                          "img/image1.jpg",
                                          fit: BoxFit.fill,
                                        ),
                                        Image.asset(
                                          "img/image2.jpg",
                                          fit: BoxFit.fill,
                                        ),
                                      ],
                                      dotSize: 6,
                                      dotBgColor: Colors.transparent,
                                    ),
                                  ),
                                ),

                                height: 304,
                                width: 270,
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(top: 168, left: 16),
                                child: Text(
                                  "3,150,000",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(top: 170, left: 78),
                                child: Text(
                                  "EGP",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(top: 190, left: 16),
                                child: Row(
                                  children: <Widget>[

                                    Imagee(url: "map",size: 10,),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "Cairo,Mostakbal City - Future...",
                                      style: TextStyle(color: Colors.black12),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(top: 210, left: 16),
                                child: Text(
                                  "Exclusive Mandate I Exceptional Fully Upgraded",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(top: 235, left: 16),
                                child: Row(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Imagee(url: "pad",size: 20,),

                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          "3",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 35,
                                    ),
                                    Row(
                                      children: <Widget>[

                                        Imagee(url: "wc",size: 20,),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          "3",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 35,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Imagee(url: "window",size: 20,),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          "300",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Imagee(url: "heart",top: 18,left: 230,size: 20,),
                              Imagee(url: "box",top: 4,left: 4,size: 60,),
                              Imagee(url: "boxlogo",top: 130,left: 195,size: 80,)
                            ],
                          ),
                        ),
                      );
                    }),
              ),],)).toList()
          ],
        ),
      ),
    );
  }
}

class Imagee extends StatelessWidget {
  final double top ,left,size;
  final url;
  Imagee({this.left=0,this.top=0,this.url,this.size});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
       EdgeInsets.only(top: top, left: left),
      child: SvgPicture.asset(
        "img/$url.svg",
        height: size,
        width: size,
        fit: BoxFit.fill,
      ),
    );
  }
}
