

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sebco_camioniste/viewModel/notificationViewModel.dart';
import 'package:sebco_camioniste/views/components/widgets.dart';

class Notifications extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _notificationState();


}

class _notificationState extends State<Notifications>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Widgets.bgColor,
      appBar: AppBar(
        backgroundColor: Widgets.componentColor,
        title: Text('Notifications',style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
          textAlign: TextAlign.start,
        ),
        centerTitle: true,
      ),
      body: Container(
        height: Widgets.getScreenHeight(context),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: NotificationViewModel.notificationList.length,
          itemBuilder: (BuildContext context, int index)
          {
            return GestureDetector(
              onTap: () {
                Fluttertoast.showToast(
                    msg: NotificationViewModel.notificationList[index].nameClient,
                    toastLength: Toast.LENGTH_LONG,
                    gravity: ToastGravity.TOP,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Widgets.btnColor,
                    textColor: Colors.white,
                    fontSize: 16.0
                );

                NotificationViewModel.moveToDetail(context, index);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(8),
                //height: Widgets.getScreenHeight(context),
                decoration: BoxDecoration(
                  color: Widgets.componentColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/notif.svg', height: 47, width: 47,),


                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(' Nom du client',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,

                          ),),

                        Text(' Date de la commande',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,

                          ),),

                        Text(' Date de livraison',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,

                          ),),

                        Text(' Nombre de commande ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,

                          ),),


                      ],
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(' : ${NotificationViewModel.notificationList[index].nameClient} ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,

                          ),),

                        Text(' : ${NotificationViewModel.notificationList[index].dataOfOrder} ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,

                          ),),

                        Text(' : ${NotificationViewModel.notificationList[index].dateOfDelivery} ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,

                          ),),

                        Text(' : ${NotificationViewModel.notificationList[index].ProductsNumber} ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,

                          ),),


                      ],
                    )
                  ],
                ),

              ),
            );
          },

        ),
      ),
    );
  }

}