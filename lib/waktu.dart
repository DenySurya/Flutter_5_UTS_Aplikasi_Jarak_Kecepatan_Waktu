import 'package:flutter/material.dart';
import 'result/waktu_result.dart';



class InputWaktu extends StatefulWidget {
  @override
  _InputWaktu createState() => _InputWaktu();
}

class _InputWaktu extends State<InputWaktu> {
  // V = Kecepatan
  // S = Jarak Tempuh
  // T = Waktu Tempuh
  // RUMUS
  // V = S / T
  // S = V x T
  // T = S / V

  int s = 0;
  int v = 0;
  int t = 0;
  
  //  void jarakTempuh() {
  //   setState(() {
  //   s = v * t;

  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        
           
        title: Text('Waktu'),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            child: Center(
              child: Column(

                children: <Widget>[
                  
                  Container(
                    margin: EdgeInsets.only(top: 20),
                      alignment: Alignment.center,
                      child: Text('Mencari Waktu',
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade500,
                          ))),
                          SizedBox(height: 10,),

                Container(
                    margin: EdgeInsets.only(top: 0, left: 10, right: 10),
                      alignment: Alignment.centerLeft,
                      child: Text('Rumus : T = S / V',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ))),
                         
                Container(
                    margin: EdgeInsets.only(top: 0, left: 10, right: 10),
                      alignment: Alignment.centerLeft,
                      child: Text('V = Kecepatan',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                          ))),
                 Container(
                    margin: EdgeInsets.only(top: 0, left: 10, right: 10),
                      alignment: Alignment.centerLeft,
                      child: Text('S = Jarak Tempuh',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                          ))),
                 Container(
                    margin: EdgeInsets.only(top: 0, left: 10, right: 10),
                      alignment: Alignment.centerLeft,
                      child: Text('T = Waktu Tempuh',
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.black,
                          ))),
                Container(
                      margin: EdgeInsets.only(top: 30),
                          width: 350,
                          height: 80,
                          child: TextField(
                            onChanged: (txt) {
                              setState(() {
                                s = int.parse(txt);
                              });
                            },
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.green[900],
                            ),
                            decoration: new InputDecoration(
                              suffix: Text('km'),
                                border: new OutlineInputBorder(
                                    borderRadius:
                                        new BorderRadius.circular(30.0)),
                                        labelText: "Jarak (S)",
                                hintText: 'Masukan Jarak'),
                              ),
                          ),
                   Container(
                      margin: EdgeInsets.only(top: 3),
                          width: 350,
                          height: 80,
                          child: TextField(
                            onChanged: (txt) {
                              setState(() {
                                v = int.parse(txt);
                              });
                            },
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.green[900],
                            ),
                            decoration: new InputDecoration(
                              suffix: Text('km/jam'),
                                border: new OutlineInputBorder(
                                    borderRadius:
                                        new BorderRadius.circular(30.0)),
                                        labelText: "Kecepatan (V)",
                                hintText: 'Masukan Kecepatan'),
                              ),
                          ),
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
                         context,
                          MaterialPageRoute(
                                builder: (context) => WaktuResult(
                                  
                                  jarak_tempuh: s,
                                  kecepatan: v,
                                  waktu_tempuh: t,)),
                          );
                    },
                    child: Text(
                      "Hitung Kecepatan",
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
        ],
      ),
     bottomNavigationBar: BottomAppBar(
        //color: Colors.transparent,
        child: Container(
        width: double.infinity,
        height: 80,
        child: RaisedButton(
          color: Colors.blue[800],
          child: Text(
            'Kembali',
            style: TextStyle(fontSize: 30,color: Colors.white),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
     ),
    );
  }
}
