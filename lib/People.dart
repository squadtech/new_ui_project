import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class People extends StatefulWidget {
  @override
  _PeopleState createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  List<String> _dataList = ['facebook', 'instagram', 'whatsapp', 'facebook'];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        body: Container(

          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 0.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Color(0xFFF2FAF2),

                  ),
                  height: 150.0,
                  width: double.infinity,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top:50,right: 150),
                        child: Text(
                          'Den drust Stalin',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 18.0,color:Colors.lightGreen),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:10,right: 60),
                        child: Text(
                          'Getranke Beststallen',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold,
                            color: Color(0xFF006600)),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:1.0,right:1.0),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Color(0xFF006600),
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          height: 32.0,
                          alignment: Alignment.center,
                        //  margin: EdgeInsets.only(right: 8, left: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                          //  color: Color.fromRGBO(96, 126, 246, 1),
                          ),
                          child: Text(
                            'Soft Drink',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Expanded(

                        child: Container(
                          height: 32.0,
                          alignment: Alignment.center,
                     //     margin: EdgeInsets.only(right: 8, left: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                           // color: Color.fromRGBO(217, 224, 252, 1),
                          ),
                          child: Text(
                            'Beirie',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Expanded(

                        child: Container(
                          height: 32.0,
                          alignment: Alignment.center,
                     //     margin: EdgeInsets.only(right: 8, left: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                          //  color: Color.fromRGBO(217, 224, 252, 1),
                          ),
                          child: Text(
                            'Softie',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Expanded(

                        child: Container(
                          height: 32.0,
                          alignment: Alignment.center,
                     //     margin: EdgeInsets.only(right: 8, left: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.0),
                          //  color: Color.fromRGBO(217, 224, 252, 1),
                          ),
                          child: Text(
                            'Wasser',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ListView.builder(
                  itemCount: _dataList.length,
                  itemBuilder: (context, position) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),


                      ),
                      margin: EdgeInsets.only(
                          left: 16.0, right: 16.0, top: 6.0, bottom: 10.0),
                      height: 140.0,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    height: 140.0,
                                    width: 140.0,
                                    margin: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(24.0),
                                     // image: AssetImage('images/Ellipse.png'),

                                    ),

                                  ),

                                ],
                              ),
                              flex: 3,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 16.0,
                                  ),
                                  Text(
                                    'club mate',
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    '0,5| pro Flashe',
                                    style: TextStyle(
                                      color: Colors.black54,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    'euro 1.50',
                                    style: TextStyle(
                                      color: Colors.black,
                                      backgroundColor: Colors.grey
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 70.0),
                                    child: Row(
                                      children: <Widget>[

                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            height: 34.0,
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(right: 16),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                              color: Colors.black12,
                                            ),
                                         //   child:Image(image: ImageProvider('images/minus.png'))
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(right: 15.0),
                                          child: Text(
                                            '10',
                                            style: TextStyle(
                                              color: Colors.black54,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            height: 34.0,
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(right: 16),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                              color: Colors.black12,
                                            ),
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.lightBlue,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              flex: 5,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0,left: 20.0),
                        child: Container(
                          height: 50,
                          width: 100.0,
                          decoration: BoxDecoration(color: Colors.lime),
                          child: RaisedButton(
                                   child: Text('Euro 15.0'),

                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0,left: 20.0),
                        child: Container(
                            decoration: BoxDecoration(color: Colors.lightGreen),
                          height: 50.0,
                            width: 200.0,
                            child: RaisedButton(
                              child: Text('Jetzt Bestlallen',style: TextStyle(
                                fontSize: 15,
                              ),),

                            )),
                      )
                    ],
                  ),
                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}
