import 'package:calculatorapp/tuslar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Anasayfa_yeni extends StatefulWidget {
  const Anasayfa_yeni({Key? key}) : super(key: key);

  @override
  State<Anasayfa_yeni> createState() => _Anasayfa_yeniState();
}

class _Anasayfa_yeniState extends State<Anasayfa_yeni> {

  String sum="0",res="0",exp1="";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Hesap makinesi"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Center(

          child: Padding(
            padding: const EdgeInsets.all(5),

            child: Column(mainAxisAlignment: MainAxisAlignment.end,

              //sağ tarafa sabit,boşluksuz olması için
              children: [
                Row( mainAxisAlignment: MainAxisAlignment.end,//yatayda sıralama ve boşluksuz
                  //yatayda sıralama ve boşluksuz
                  children: [
                    Text("0", textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 60, color: Colors.white),),
                  ],


                  //Butonları tanımlıyoruz:

                ),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Tuslar(btn_name: "C",
                          btn_color: Colors.white10,
                          txt_color: Colors.red),
                      Tuslar(btn_name: "()",
                          btn_color: Colors.white10,
                          txt_color: Colors.green),
                      Tuslar(btn_name: "%",
                          btn_color: Colors.white10,
                          txt_color: Colors.green),
                      Tuslar(btn_name: "/",
                          btn_color: Colors.white10,
                          txt_color: Colors.green),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Tuslar(btn_name: "7",
                          btn_color: Colors.white10,
                          txt_color: Colors.white),
                      Tuslar(btn_name: "8",
                          btn_color: Colors.white10,
                          txt_color: Colors.white),
                      Tuslar(btn_name: "9",
                          btn_color: Colors.white10,
                          txt_color: Colors.white),
                      Tuslar(btn_name: "X",
                          btn_color: Colors.white10,
                          txt_color: Colors.green),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Tuslar(btn_name: "4",
                          btn_color: Colors.white10,
                          txt_color: Colors.white),
                      Tuslar(btn_name: "5",
                          btn_color: Colors.white10,
                          txt_color: Colors.white),
                      Tuslar(btn_name: "6",
                          btn_color: Colors.white10,
                          txt_color: Colors.white),
                      Tuslar(btn_name: "-",
                          btn_color: Colors.white10,
                          txt_color: Colors.green),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Tuslar(btn_name: "1",
                          btn_color: Colors.white10,
                          txt_color: Colors.white),
                      Tuslar(btn_name: "2",
                          btn_color: Colors.white10,
                          txt_color: Colors.white),
                      Tuslar(btn_name: "3",
                          btn_color: Colors.white10,
                          txt_color: Colors.white),
                      Tuslar(btn_name: "+",
                          btn_color: Colors.white10,
                          txt_color: Colors.green),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Tuslar(btn_name: "+/-",
                          btn_color: Colors.white10,
                          txt_color: Colors.white),
                      Tuslar(btn_name: "0",
                          btn_color: Colors.white10,
                          txt_color: Colors.white),
                      Tuslar(btn_name: ",",
                          btn_color: Colors.white10,
                          txt_color: Colors.white),
                      Tuslar(btn_name: "=",
                          btn_color: Colors.green,
                          txt_color: Colors.white),
                    ],
                  ),
                ),




              ],

            ),
          ),
        ),
      ),

    );
  }

}
