import 'package:flutter/material.dart';
import 'package:jarak/jarak.dart';
import 'package:jarak/kecepatan.dart';
import 'package:jarak/waktu.dart';
import 'package:jarak/about.dart';

  // V = Kecepatan
  // S = Jarak Tempuh
  // T = Waktu Tempuh
  // RUMUS
  // V = S / T
  // S = V x T
  // T = S / V
  


class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => About()));
            },
            icon: Icon(Icons.person_pin)),
        title: Text('Jarak Kecepatan Waktu'),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            
            child: Center(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 20,bottom: 10, left: 20, right: 20),
                    child: Image.asset(
                      'images/rumus.jpg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  
                  // TEXT
                   Container(
                      alignment: Alignment.center,
                      child: Text('Ayo Menghitung',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade500,
                          ))),


                  //TOMBOL JARAK
                  Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 350,
                  height: 50,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue[800],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                      context, MaterialPageRoute(builder: (context) => InputJarak()));
                    },
                    child: Text(
                      "Mencari Jarak (S)",
                      style: TextStyle(
                        fontSize: 20,
                        
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
                // BUTTON KECEPATAN
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 350,
                  height: 50,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue[800],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                      context, MaterialPageRoute(builder: (context) => InputKecepatan()));
                    },
                    child: Text(
                      "Mencari Kecepatan (V)",
                      style: TextStyle(
                        fontSize: 20,
                        
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
                // BUTTON WAKTU
                 Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 350,
                  height: 50,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue[800],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                      context, MaterialPageRoute(builder: (context) => InputWaktu()));
                    },
                    child: Text(
                      "Mencari Waktu (T)",
                      style: TextStyle(
                        fontSize: 20,
                        
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),


                ],
              ),
            ),
          )
          //button
          


        ],
      ),
      bottomNavigationBar: BottomAppBar(
        //color: Colors.transparent,
        child: Container(
          
          height: 60,
          color: Colors.blue[800],
          alignment: Alignment.center,
          child: Text(
            '@Deny Surya',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
        //elevation: 0,
      ),
    );
  }
}