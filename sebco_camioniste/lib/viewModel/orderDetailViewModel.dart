
import 'package:flutter/material.dart';

class OrderDetailViewModel
{
  static Map? getData(BuildContext context) {
    Map? data = {};
    data = ModalRoute
        .of(context)
        ?.settings
        .arguments as Map?;
    return data;
  }
}