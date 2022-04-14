import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar( backgroundColor: Colors.blue,
        title: Text("About Me"),
        elevation: 2,
      ),
      body: Container(
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(150),
                            child: Image.asset(
                              'images/gambarsatu.jpg',
                              fit: BoxFit.fitWidth,
                              width: 150,
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text("Nama : Deny Surya", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 20),)),
                              Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text("NIM  : 1915101037",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 20)))
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ))),
    );
  }
}
