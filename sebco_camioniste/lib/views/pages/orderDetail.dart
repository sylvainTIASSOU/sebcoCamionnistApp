


import 'package:flutter/material.dart';

import '../components/widgets.dart';

class OrderDetail extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => _detailState();
}

class _detailState extends State<OrderDetail>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Widgets.bgColor,
      appBar: AppBar(
        backgroundColor: Widgets.componentColor,
        title: Text('Detail du commande'),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, '/page');
          },
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.fromBorderSide(BorderSide(color: Widgets.btnColor, width: 3, style: BorderStyle.solid))
            ),
            child: Center(
                child: Icon(Icons.arrow_back_sharp,)
            ),
          ),
        )
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            children: [
              Container(),


                 Container(
                   height: Widgets.getScreenHeight(context)/2,
                   child: ListView.builder(
                      scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          margin: EdgeInsets.all(20),
                          decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Widgets.componentColor,
                          ),
                          child: Column(
                            children: [
                              Image.asset('assets/2.png'),
                              SizedBox(height: 10,),

                              Text('sable lavé',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Text('Quantité',
                                        style: TextStyle(
                                            color: Colors.white
                                        ),),
                                      Text("Montant",
                                          style: TextStyle(
                                              color: Colors.white)),
                                    ],
                                  ),
                                  SizedBox(width: 20,),

                                  Column(
                                    children: [
                                      Text(': 10m3',
                                        style: TextStyle(
                                            color: Colors.white
                                        ),),
                                      Text("Montant",
                                          style: TextStyle(
                                              color: Colors.white)),
                                    ],
                                  )
                                ],
                              )


                            ],
                          )
                      );
                    },
                ),
                 ),
              Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text('Non de l\'indique', style: TextStyle(color: Colors.white, fontSize: 18),),
                            SizedBox(height: 10,),
                            Text('Numéro de l\'indique', style: TextStyle(color: Colors.white, fontSize: 18),),
                            SizedBox(height: 10,),
                            Text('Date de la livraison', style: TextStyle(color: Colors.white, fontSize: 18),),
                            SizedBox(height: 10,),
                            Text('Heure de la livraison', style: TextStyle(color: Colors.white, fontSize: 18),),
                            SizedBox(height: 10,),
                            Text('Lien du lieu de livraison', style: TextStyle(color: Colors.white, fontSize: 18),),
                            SizedBox(height: 10,),
                            Text('Photo du lieu', style: TextStyle(color: Colors.white, fontSize: 18),),
                            SizedBox(height: 10,),
                          ],
                        ),

                        SizedBox(width: 5,),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text('Non de l\'indique', style: TextStyle(color: Colors.white, fontSize: 18),),
                            SizedBox(height: 10,),
                            Text('Numéro de l\'indique', style: TextStyle(color: Colors.white, fontSize: 18),),
                            SizedBox(height: 10,),
                            Text('Date de la livraison', style: TextStyle(color: Colors.white, fontSize: 18),),
                            SizedBox(height: 10,),
                            Text('Heure de la livraison', style: TextStyle(color: Colors.white, fontSize: 18),),
                            SizedBox(height: 10,),
                            Text('Lien du lieu de livraison', style: TextStyle(color: Colors.white, fontSize: 18),),
                            SizedBox(height: 10,),
                            Text('Photo du lieu', style: TextStyle(color: Colors.white, fontSize: 18),),
                            SizedBox(height: 10,),
                          ],
                        ),

                      ],
                    ),

              //button

                    Widgets.costumButton(context,'Accepter la livraison', null),
                    Widgets.costumButton(context,'Rejeter la livraison', null),
                  ],
                ),
              ),
            ],
          ),
        ),
      
    );
  }

}