import'package:flutter/material.dart';
import'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sebco_camioniste/views/pages/dashbord.dart';
import 'package:sebco_camioniste/views/pages/notification.dart';

import '../components/widgets.dart';
class Pages extends StatefulWidget {
  @override
  PageState createState() => PageState();
}
class PageState extends State<Pages> {

  int _selectedIndex = 0;
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onItemTaped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Widgets.componentColor,
        bottomNavigationBar:
        BottomNavigationBar(
          unselectedItemColor: Colors.white,
          backgroundColor: Widgets.componentColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: 'home'),

            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.handHoldingDollar, size: 30,),
                label: 'home'),
            BottomNavigationBarItem(
                icon:  Icon(
                  Icons.notifications,
                  size: 30,
                ),
                label: 'notification'),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Widgets.btnColor,
          onTap: (index) {
            setState(() {
              _pageController.jumpToPage(index);
            });
          },
        ),
        body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            children: [
                Dashbord(),

                Container(
                  child: Center(child: Text('liste des payements reçu!!', style: TextStyle(color: Colors.white),),),
                ),
              Notifications(),
            ],
          ),
        )
    );
  }

  }