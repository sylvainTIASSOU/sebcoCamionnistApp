import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sebco_camioniste/views/components/widgets.dart';

class Inscription1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _inscriptionState();
}

class _inscriptionState extends State<Inscription1> {
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
                    Text('Informations Personnelles', style: TextStyle(color: Colors.white, fontSize: 25),),
                Widgets.formField(
                    'Nom', Icon(Icons.person), TextInputType.text),
                Widgets.formField(
                    'Prénom', Icon(Icons.person), TextInputType.text),
                Widgets.formField('Numéro de téléphone', Icon(Icons.phone),
                    TextInputType.number),
                Widgets.formField('Localité', Icon(Icons.location_on_outlined),
                    TextInputType.text),
//Bouton
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                      height: 40,
                      width: Widgets.getScreenWidth(context),
                      decoration: BoxDecoration(
                        color: Widgets.btnColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/inscription2');
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.transparent)
                        ),
                        child: Text('Suivant', style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),),
                      ),
                    )
              ])),
            ),
          ],
        ),
      ),
    );
  }
}
