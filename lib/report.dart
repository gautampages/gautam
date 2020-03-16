import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.lightBlue[50],
        appBar: AppBar(
          title: Text('Puma India'),
          backgroundColor: Color(0xFF242B42),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Text(
                  'Monthely Report',
                  style: TextStyle(fontSize: 45, color: Colors.black,fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 15,),
               Center(
                child: Text(
                  'Shop ID:401',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Card(
                    elevation: 10,
                    color: Colors.cyanAccent,
                    child: Column(
                      children: <Widget>[
                        Text('   On Ads..',
                            style: TextStyle(fontSize: 15, color: Colors.blue)),
                        Row(
                          children: <Widget>[
                            Text(
                              '   49',
                              style: TextStyle(fontSize: 50),
                            ),
                            Text('clicks    ',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.blue)),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 79,
                  ),
                  Card(
                    elevation: 10,
                    color: Colors.cyanAccent,
                    child: Column(
                      children: <Widget>[
                        Text('  On Offers..',
                            style: TextStyle(fontSize: 15, color: Colors.blue)),
                        Row(
                          children: <Widget>[
                            Text(
                              '   38',
                              style: TextStyle(fontSize: 50),
                            ),
                            Text('clicks    ',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.blue)),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 10,
                color: Colors.cyanAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('   Total number of likes on Add',
                        style: TextStyle(fontSize: 25, color: Colors.blue)),
                    Row(
                      children: <Widget>[
                        Text('   12',
                            style: TextStyle(
                              fontSize: 50,
                            )),
                        Text('Likes', style: TextStyle(color: Colors.blue))
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                elevation: 10,
                color: Colors.cyanAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('   Total number of Complaints',
                        style: TextStyle(fontSize: 25, color: Colors.blue)),
                    Row(
                      children: <Widget>[
                        Text('   3',
                            style: TextStyle(
                              fontSize: 50,
                            )),
                        Text('Complaints', style: TextStyle(color: Colors.blue))
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: SizedBox(
                    height: 50,
                    width: 150,
                    child: Card(
                      color: Colors.pink,
                      child: FlatButton(
                        color: Colors.lightBlue,
                        onPressed: () {},
                        child: Text('Send Report',style: TextStyle(fontSize: 18)),
                      ),
                    )),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
