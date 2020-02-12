import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Salepage extends StatefulWidget {
  @override
  _SalepageState createState() => _SalepageState();
}

class _SalepageState extends State<Salepage> {
  List<String> _dataList = ['facebook', 'instagram', 'whatsapp', 'facebook'];final List<String> images= [
    'images/pic.jpg','images/2.jpg','images/6.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                    padding: const EdgeInsets.only(top: 50, right: 150),
                    child: Text(
                      'Den drust Stalin',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 18.0, color: Colors.lightGreen),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 60),
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
            ),),

          Padding(
            padding: EdgeInsets.only(top: 10),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 300,
                    padding: EdgeInsets.all(16.0),
                    child: Swiper(
                      itemBuilder: (BuildContext context, int index) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Container(
                            child: Image.asset(
                              images[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                      itemCount: 3,
                      viewportFraction: 0.8,
                      scale: 0.9,
                      pagination: SwiperPagination(),
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
                    left: 16.0, right: 16.0, top: 0.0, bottom: 0.0),
                  height: 100.0,
                  child: Card(
                    color: Color(0xFFF2FAF2),
                    shape: RoundedRectangleBorder(
                      // borderRadius: BorderRadius.circular(24.0),

                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child:  Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              '3',
                              style: TextStyle(
                                  color: Colors.black26,
                                  fontSize: 30
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Stack(
                            children: <Widget>[
                              Container(
                                height: 140.0,
                                width: 100.0,
                                margin: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Color(0xFFeeeeee),
                                  shape: BoxShape.circle,
                                  //borderRadius: BorderRadius.circular(24.0),
                                  image: new DecorationImage(image: AssetImage('images/pic.jpg'),fit: BoxFit.cover ),
                                ),

                              ),

                            ],
                          ),
                          flex: 3,
                        ),
                        Expanded(
                          child:Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 16.0,
                              ),
                              Text(
                                'club mate',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF006600)),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 15,top: 5),
                                child: Container(
                                  width: 70,
                                  decoration: BoxDecoration(
                                     // color: Color(0xFFeeeeee),
                                      borderRadius: BorderRadius.circular(16)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 1),
                                    child: Text(
                                      'EUR 450',
                                      style: TextStyle(
                                          color: Colors.black38,

                                          fontSize: 12
                                      ),
                                    ),
                                  ),
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
            padding: const EdgeInsets.only(top: 10.0,left: 20.0),
            child: Container(
                decoration: BoxDecoration(color: Colors.green),
                height: 50.0,
                width: 300.0,
                child: RaisedButton(
                  child: Text('Jetzt Bestlallen',style: TextStyle(
                      fontSize: 15,
                      color: Colors.white
                  ),),

                )),
          )
        ],
      ),
    );
  }
}
