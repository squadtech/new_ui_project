import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<String> flashSaleImages = ['images/pic.jpg','images/2.jpg','images/6.jpg'];
  List<String> _dataList = ['facebook', 'instagram', 'whatsapp', 'facebook'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
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
                    ),)
                ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 0.0),
            child: Container(
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 25.0),
                    child: Container(
                      height: 50,
                      width: 100.0,
                      decoration: BoxDecoration(color: Colors.lightGreen,),
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5, left: 5),
                          child: Row(
                            children: <Widget>[
                              Text('Euro 15.0', style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold,
                                  color: Colors.white),),

                              Icon(
                                Icons.filter_center_focus, color: Colors.white,)
                            ],
                          ),
                        ),

                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 2.0),
                    child: Container(
                      height: 50,
                      width: 100.0,
                      decoration: BoxDecoration(color: Colors.lightGreen,),
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5, left: 5),
                          child: Row(
                            children: <Widget>[
                              Text('Sortieren', style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold,
                                  color: Colors.white),),

                              Icon(Icons.arrow_downward, color: Colors.white,)
                            ],
                          ),
                        ),

                      ),

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 2.0),
                    child: Container(
                      height: 50,
                      width: 100.0,
                      decoration: BoxDecoration(color: Colors.lightGreen,),
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5, left: 10),
                          child: Row(
                            children: <Widget>[

                              Text('Teilen', style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold,
                                  color: Colors.white),),
                              Icon(Icons.share, color: Colors.white,)
                            ],
                          ),
                        ),

                      ),

                    ),
                  ),


                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              children: <Widget>[
                _buildFlashSaleItem(0),
               _buildFlashSaleItem(1),
               _buildFlashSaleItem(2),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
              itemCount: _dataList.length,
              itemBuilder: (context, position) {
                return Container(
                  /* decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),


                      ),*/margin: EdgeInsets.only(
                      left: 16.0, right: 16.0, top: 6.0, bottom: 10.0),
                  height: 100.0,
                  child: Card(
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
                                  color: Color(0xFFFe8f5e9),
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
                                padding: const EdgeInsets.only(left: 30,top: 5),
                                child: Container(
                                  width: 40,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFeeeeee),
                                    borderRadius: BorderRadius.circular(16)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      '2.7',
                                      style: TextStyle(
                                          color: Colors.black,

                                          fontSize: 14
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

        ],
      ),

    );
  }

  Expanded _buildFlashSaleItem(int index) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: 10.0,left: 6),
        child: Column(
          children: <Widget>[
            Container(
              height: 80,
              // color: Colors.blue,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(flashSaleImages[index]),
                      fit: BoxFit.cover),
                color: Colors.white,
              ),
            ),

            SizedBox(height: 5.0,),
            Text('Micheal')
          ],
        ),
      ),
    );
  }
}
