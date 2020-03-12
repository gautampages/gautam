import 'package:admin/ProfileEdit.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileEdit()));
        },child: Icon(Icons.edit),),
        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
              width: double.maxFinite,
              height: 55,
              child: RaisedButton(
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => ProjectList()));
                  Navigator.of(context).pop();
                },
                color: Color(0xFF242B42),
                child: Text(
                  'Back',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              )),
        ),
        appBar: AppBar(
          title: Text('Admin'),
          backgroundColor: Color(0xFF242B42),
          centerTitle: true,
        ),
        body: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Image.asset('assets/back.jpg',fit: BoxFit.cover,)
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 40,),
                          ListTile(
                            title: Text(
                              'admin@eddysmart.com',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            leading: Icon(
                              Icons.mail,
                              size: 47,
                              color: Colors.black,
                            ),
                          ),
                          ListTile(
                            title: Text(
                              '+919235654859',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            leading: Icon(
                              Icons.call,
                              size: 47,
                              color: Colors.black,
                            ),
                          ),
                          ListTile(
                            title: Text(
                              'Kothrud,Pune',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            leading: Icon(
                              Icons.location_city,
                              size: 47,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 160),
              
              child: SizedBox(
            
                height: 160,
                width: MediaQuery.of(context).size.width,
                child: Card(color: Colors.lightBlue[100],
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 50, backgroundImage: AssetImage('assets/admin.jpg'),
                      ),
                      Text('Kunal Singh', style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 40))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
