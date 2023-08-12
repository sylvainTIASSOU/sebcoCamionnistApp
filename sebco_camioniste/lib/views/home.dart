import 'package:flutter/material.dart';
import 'package:sebco_camioniste/views/pages/dashbord.dart';
import 'package:sebco_camioniste/views/pages/inscription1.dart';
import 'package:sebco_camioniste/views/pages/inscription2.dart';
import 'package:sebco_camioniste/views/pages/notification.dart';
import 'package:sebco_camioniste/views/pages/orderDetail.dart';
import 'package:sebco_camioniste/views/pages/page.dart';
import 'package:sebco_camioniste/views/pages/splashpage.dart';

import 'components/widgets.dart';

class Home extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SeBCo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Widgets.bgColor),
        //useMaterial3: true,
      ),
      //home: SplashPage(),

      initialRoute: '/splashPage',
      routes:{
        '/splashPage': (context) => SplashPage(),
       '/dashbord': (context) => Dashbord(),
        '/page': (context) => Pages(),
        'notification': (context) => Notifications(),
        '/orderdetail': (context) => OrderDetail(),
        '/inscription1': (context) => Inscription1(),
        '/inscription2': (context) => Inscription2(),

      },
    );
  }
}