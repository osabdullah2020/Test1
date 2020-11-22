import 'package:drug/UI/Agecny.dart';
import 'package:drug/UI/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar>  with TickerProviderStateMixin{

  TabController tabController ;
  @override
  void initState() {
 tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,

        child: Scaffold(
          body: TabBarView(
            controller: tabController,
            children: [
             HomePage(),
             Agecny(),
              Icon(Icons.directions_bike),
              Icon(Icons.ac_unit)
            ],
          ),
          bottomNavigationBar: Container(
            height: 75,
            child: AppBar(
              backgroundColor: Colors.white,
              bottom: TabBar(
                onTap: (index){
                  tabController.animateTo(index);
                },
                labelColor: Colors.black,
                controller: tabController,
                unselectedLabelColor: Colors.grey.withOpacity(0.3),
                indicator: BoxDecoration(border: Border(top: BorderSide(color: Colors.black,width: 2))),
                tabs: [
                  Tab(icon: Icon(Icons.home),child: Text("Home"),),
                  Tab(icon: SvgPicture.asset("img/iconbotom.svg"),child: Text("Agecny"),),
                  Tab(icon: SvgPicture.asset("img/boxbotom.svg"),child: Text("Community"),),
                  Tab(icon: Icon(Icons.person),child: Text("Account"),),
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
