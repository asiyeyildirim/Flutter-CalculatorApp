

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Tuslar extends StatelessWidget {

  String btn_name;
  Color btn_color;
  Color txt_color;


  Tuslar({ required this.btn_name, required this.btn_color, required this.txt_color});
  String toplam="0",sonuc="0",deger1="";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      width: 70,
      child: ElevatedButton(onPressed: (){ //Butona tıkladğımızda hangi işlemş yapsın:

        if ( btn_name == "=") {

            deger1 = toplam;
            deger1 = deger1.replaceAll("×", "*"); // yer değiştirmesi ve çıktı olarak da String döndürmesi için
            Parser P = Parser(); //String değeri çevirebilmemiz için
            Expression deger2 = P.parse(deger1);
            ContextModel con = ContextModel(); //bağlam oluşturduk
            sonuc = "${deger2.evaluate(EvaluationType.REAL, con)}";

        } else if (btn_name == "C") {
          if (toplam.length == 1) {
            toplam = "0";

          } else {
            toplam = toplam.substring(0, toplam.length - 1);

          }
        } else {
          if (toplam == "0") {
            toplam = btn_name;

          } else {
            toplam += btn_name;

          }
        }
      },
        child: Text(btn_name,style: TextStyle(fontSize: 28,color: txt_color, fontWeight: FontWeight.bold),),
        style: TextButton.styleFrom(
       backgroundColor: btn_color,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(55))),

        ),
      ),
    );
  }
}
