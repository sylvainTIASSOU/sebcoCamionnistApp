
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sebco_camioniste/views/components/widgets.dart';

class Dashbord extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Widgets.bgColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          decoration: BoxDecoration(
            color: Widgets.bgColor,
          ),
          child: Column(
            children: [
              SizedBox(height: 45,),
                  Center(
                    child: Widgets.profil(context, '/inscription1')
                  ),
              SizedBox(height: 8,),
       // user name
              Center(child: Text('Sylvain TIASSOU',
              style: TextStyle(
                color: Widgets.btnColor,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),),
              SizedBox(height: 20,),
              Text('Tableau de bord',style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.start,
              ),

              SizedBox(height: 10,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      //methode to execute
                    },
                    child: Center(
                      child: Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Widgets.color1,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          FaIcon(FontAwesomeIcons.cartShopping, size: 100, color: Colors.white,),
                          SizedBox(height: 10,),
                          Text('Commandes effectuées', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20),),
                        ],),
                      ),
                    ),
                  ),
                  SizedBox(width: 18,),

                  GestureDetector(
                    onTap: (){
                      //methode to execute
                    },
                    child: Container(
                      width: 150,
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Widgets.color2,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        FaIcon(FontAwesomeIcons.biking, size: 100, color: Colors.white,),
                        SizedBox(height: 10,),
                        Text('Commandes en cours', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20),),
                      ],),
                    ),
                  ),


                ],
              ),


              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      //methode to execute
                    },
                    child: Center(
                      child: Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Widgets.color3,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.history, size: 100, color: Colors.white,),
                            SizedBox(height: 10,),
                            Text('Historique des commandes', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20),),
                          ],),
                      ),
                    ),
                  ),
                  SizedBox(width: 18,),

                  GestureDetector(
                    onTap: (){
                      //methode to execute
                    },
                    child: Container(
                      width: 150,
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Widgets.color4,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.accessible, size: 100, color: Colors.white,),
                          SizedBox(height: 10,),
                          Text('Commandes en attentes', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 20),),
                        ],),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 5,),

            ],
          ),
        ),
      ),
    );
  }

}