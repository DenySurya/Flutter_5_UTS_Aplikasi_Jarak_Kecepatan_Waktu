import 'package:flutter/material.dart';
import 'dart:math';
 
  // V = Kecepatan
  // S = Jarak Tempuh
  // T = Waktu Tempuh
  // RUMUS
  // V = S / T
  // S = V x T
  // T = S / V

class JarakResult extends StatelessWidget {
  JarakResult({required this.jarak_tempuh, required this.kecepatan,required this.waktu_tempuh});
  final int jarak_tempuh;
  final int kecepatan;
  final int waktu_tempuh;
 
  
  @override
  Widget build(BuildContext context) {
    //MEMASUKKAN RUMUS
  int hasil = kecepatan * waktu_tempuh;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20),
        // alignment: Alignment.centerLeft,
        child: Column(
          children: <Widget>[
          Container(
                    margin: EdgeInsets.only(top: 0),
                      alignment: Alignment.center,
                      child: Text('Penyelesaian',
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade500,
                          ))),
                          SizedBox(height: 10,),
            //DIKETAHUI
            Container(
                    margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                      alignment: Alignment.centerLeft,
                      child: Text('Diketahui',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ))),
                       
                  Container(
                    margin: EdgeInsets.only(top: 0, left: 10, right: 10),
                      alignment: Alignment.centerLeft,
                      child: Text('    Kecepatan (v) = $kecepatan ' 'km/jam',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ))),
                          
                  Container(
                    margin: EdgeInsets.only(top: 0, left: 10, right: 10),
                      alignment: Alignment.centerLeft,
                      child: Text('    Waktu (t) = $waktu_tempuh ' 'jam',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ))),
                          SizedBox(height: 10,),
                
                // DITANYA
                Container(
                    margin: EdgeInsets.only(top: 0, left: 10, right: 10),
                      alignment: Alignment.centerLeft,
                      child: Text('Ditanya:',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ))),
                       
                  Container(
                    margin: EdgeInsets.only(top: 0, left: 10, right: 10),
                      alignment: Alignment.centerLeft,
                      child: Text('    Jarak (s) = .... km',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ))),
                          
                //JAWAB
                Container(
                    margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                      alignment: Alignment.centerLeft,
                      child: Text('Jawab',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ))),
                       
                  Container(
                    margin: EdgeInsets.only(top: 0, left: 10, right: 10),
                      alignment: Alignment.centerLeft,
                      child: Text('    S = V x T',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ))),
                          
                  Container(
                    margin: EdgeInsets.only(top: 0, left: 10, right: 10),
                      alignment: Alignment.centerLeft,
                      child: Text('    S = $kecepatan km/jam x $waktu_tempuh jam',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ))),
                         
                  Container(
                    margin: EdgeInsets.only(top: 0, left: 10, right: 10),
                      alignment: Alignment.centerLeft,
                      child: Text('   S = $hasil km',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[800],
                          ))),
                          SizedBox(height: 10,),
          ],
        ),
      ),
      
      bottomSheet: Container(
        width: double.infinity,
        height: 80,
        child: RaisedButton(
          color: Colors.blue[800],
          child: Text(
            'BACK',
            style: TextStyle(fontSize: 30,color: Colors.white),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
