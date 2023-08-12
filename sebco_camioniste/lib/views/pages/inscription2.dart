

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sebco_camioniste/views/components/widgets.dart';

class Inscription2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _inscriptionState();
}

class _inscriptionState extends State<Inscription2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Widgets.bgColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              'Inscription',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: SvgPicture.asset(
                'assets/undraw_modern_design_re_dlp8.svg',
                width: 110,
                height: 110,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.only(top: 10, bottom: 20),
              decoration: BoxDecoration(
                  color: Widgets.componentColor,
                  borderRadius: BorderRadius.circular(35)),
              child: Form(
                  child: Column(children: [
                    Text('Informations du camion', style: TextStyle(color: Colors.white, fontSize: 25),),
                    Widgets.formField(
                        'Marque du camion', Icon(Icons.train_outlined), TextInputType.text),
                    Widgets.formField(
                        'Matricule', Icon(Icons.map_outlined), TextInputType.text),
                    Widgets.formField('Plaque', Icon(Icons.padding),
                        TextInputType.number),
                    Widgets.formField('Dimension  eg: 20m3', Icon(Icons.directions_bus_filled_outlined),
                        TextInputType.number),
//Boutono
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                        height: 40,
                        decoration: BoxDecoration(
                          color: Widgets.btnColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/inscription1');
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.transparent)
                          ),
                          child: Text('Retour', style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                        height: 40,
                        decoration: BoxDecoration(
                          color: Widgets.btnColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/dashbord');
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.transparent)
                          ),
                          child: Text('Valider', style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),),
                        ),
                      ),
                    ],
                  )

                  ])),
            ),
          ],
        ),
      ),
    );
  }
}
