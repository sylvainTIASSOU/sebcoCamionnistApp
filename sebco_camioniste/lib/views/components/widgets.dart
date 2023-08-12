import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Widgets {
  static Color bgColor = Color(0xFF121747);
  static Color btnColor = Color(0xFFDB7C0C);
  static Color componentColor = Color.fromRGBO(48, 60, 173, 0.20);
  static Color color1 = Color.fromRGBO(219, 124, 12, 0.48);
  static Color color2 = Color.fromRGBO(153, 219, 12, 0.48);
  static Color color3 = Color.fromRGBO(219, 12, 37, 0.48);
  static Color color4 = Color.fromRGBO(12, 219, 206, 0.48);

  //get screen size
  static getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static Widget profil( BuildContext context, String action) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, action);
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: Border.fromBorderSide(BorderSide(
              width: 3,
              color: Widgets.btnColor,
            ))),
        child: SvgPicture.asset('assets/undraw_pic_profile_re_7g2h.svg'),
      ),
    );
  }


  //button
static costumButton(BuildContext context,String title,  action)
{
  return Container(
    margin: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
    height: 50,
    width: Widgets.getScreenWidth(context),
    decoration: BoxDecoration(
      color: Widgets.btnColor,
      borderRadius: BorderRadius.circular(30),
    ),
    child: ElevatedButton(
      onPressed: () {
        action;
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.transparent)
      ),
      child: Text(title, style: TextStyle(
        color: Colors.white,
        fontSize: 30,
      ),),
    ),
  );
}


//formfield

static formField(String label,Icon? icon, TextInputType type )
{
  return
          Container(
            height: 60,
            margin: EdgeInsets.all(10) ,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.fromBorderSide(BorderSide(
                  width: 3,
                  color: Widgets.btnColor,
                ))),
            child: TextFormField(
              keyboardType: type,
                style: TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                    labelText: label,
                    prefixIcon: icon,
                    prefixIconColor: Colors.white,
                    border: InputBorder.none)),
          );
}
}
