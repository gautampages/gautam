import 'package:flutter/material.dart';

class Complaints extends StatefulWidget {
  @override
  _ComplaintsState createState() => _ComplaintsState();
}

class _ComplaintsState extends State<Complaints> {
  TextStyle sty =
      TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.w500);
  TextStyle sty2 =
      TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.lightBlue[200],
        appBar: AppBar(
          title: Text('Complaints'),
          backgroundColor: Color(0xFF242B42),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Text('Customer Complaints',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
                      SizedBox(height: 20,),
              Stack(
                children: <Widget>[
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                'Complaints Id:',
                                style: sty2,
                              ),
                              Text('1', style: sty),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text('Customer Id:', style: sty2),
                              Text('1005', style: sty),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text('Shop Id:', style: sty2),
                              Text('103', style: sty),
                            ],
                          ),
                          Wrap(
                            children: <Widget>[
                              Text('Description:', style: sty2),
                              Text(
                                  'The shop owner behaviour was very bad, he continewsely misbehaving with me, so i want action against it.',
                                  style: sty),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                  left: MediaQuery.of(context).size.width / 1.51,
                  top: 5,
                  child: Container(
                    decoration: new BoxDecoration(
                        color: Colors.green,
                        borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(10.0),
                            bottomRight: const Radius.circular(10.0))),
                    child: SizedBox(
                      child: Center(
                          child: Text('Resolved',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w400))),
                      height: MediaQuery.of(context).size.width / 15,
                      width: MediaQuery.of(context).size.width / 4,
                    ),
                  ))
                ],
              ),
              Stack(
                children: <Widget>[
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                'Complaints Id:',
                                style: sty2,
                              ),
                              Text('2', style: sty),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text('Customer Id:', style: sty2),
                              Text('1012', style: sty),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text('Shop Id:', style: sty2),
                              Text('108', style: sty),
                            ],
                          ),
                          Wrap(
                            children: <Widget>[
                              Text('Description:', style: sty2),
                              Text(
                                  'The shop owner behaviour was very bad, he continewsely misbehaving with me, so i want action against it.',
                                  style: sty),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                  left: MediaQuery.of(context).size.width / 1.51,
                  top: 5,
                  child: Container(
                    decoration: new BoxDecoration(
                        color: Colors.green,
                        borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(10.0),
                            bottomRight: const Radius.circular(10.0))),
                    child: SizedBox(
                      child: Center(
                          child: Text('Un-Resolved',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w400))),
                      height: MediaQuery.of(context).size.width / 15,
                      width: MediaQuery.of(context).size.width / 4,
                    ),
                  ))
                ],
              ),
              // Card(
              //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              //   elevation: 10,
              //   child: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Column(
              //       children: <Widget>[
              //         Row(
              //           children: <Widget>[
              //             Text(
              //               'Complaints Id:',
              //               style: sty2,
              //             ),
              //             Text('3', style: sty),
              //           ],
              //         ),
              //         Row(
              //           children: <Widget>[
              //             Text('Customer Id:', style: sty2),
              //             Text('1006', style: sty),
              //           ],
              //         ),
              //         Row(
              //           children: <Widget>[
              //             Text('Shop Id:', style: sty2),
              //             Text('113', style: sty),
              //           ],
              //         ),
              //         Wrap(
              //           children: <Widget>[
              //             Text('Description:', style: sty2),
              //             Text(
              //                 'The shop owner behaviour was very bad, he continewsely misbehaving with me, so i want action against it.',
              //                 style: sty),
              //           ],
              //         ),
              //       ],
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
