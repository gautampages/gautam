import 'package:admin/Login.dart';
import 'package:admin/complaints.dart';
import 'package:admin/profile.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Home> {
  String str1 = 'Active';
  String str2 = 'Not-active';
  String str3 = 'Active';
  String str4 = 'Not-active';
  String str5 = 'Active';

  int _selectedIndex = 0;
  List<String> _locations = [
    'Reebok India',
    'Puma India',
    'Dominos',
    'Brand Factory'
  ];
  String _selectedLocation;
  String email = 'Shop Email-Id';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          bottomNavigationBar: navigationbar(),
          backgroundColor: Colors.lightBlue[100],
          drawer: myDrawer(),
          appBar: AppBar(
            title: Text('Admin'),
            backgroundColor: Color(0xFF242B42),
            centerTitle: true,
          ),
          // body:if(_selectedIndex==0:ownerList?Text)
          body: _selectedIndex == 0
              ? ownerList()
              : _selectedIndex == 1 ? Text('11') : api()),
    );
  }

  Widget ownerList() {
    return Container(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 5.3,
                  child: Center(
                    child: ListTile(
                      title: Text(
                        'Reebok India',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      onTap: () {
                        showDialog<Null>(
                            context: context,
                            barrierDismissible: false,
                            builder: (BuildContext context) {
                              return new AlertDialog(
                                title: Center(child: Text('Clip List')),
                                content: Text('Are you sure want to delete ?'),
                                actions: <Widget>[
                                  FlatButton(
                                    child: new Text('Activate'),
                                    onPressed: () {
                                      setState(() {
                                        print('object');
                                        str1 = 'Active';
                                      });
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  FlatButton(
                                    child: new Text('De-Activate'),
                                    onPressed: () {
                                      setState(() {
                                        str1 = 'Not-Active';
                                      });
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            });
                      },
                      subtitle: Text(
                          'Reebok International Limited is an American footwear and apparel company, and a Independent subsidiary of German sporting goods giant Adidas since 2005.'),
                      leading: SizedBox(
                        height: 60,
                        width: 100,
                        child: Image.network(
                            'https://img.etimg.com/thumb/width-640,height-480,imgsize-29776,resizemode-1,msid-59023795/reebok-seeks-government-nod-to-open-single-brand-retail-stores.jpgh'),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: MediaQuery.of(context).size.width / 1.45,
                  top: 5,
                  child: Container(
                    decoration: new BoxDecoration(
                        color: Colors.green,
                        borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(10.0),
                            bottomRight: const Radius.circular(10.0))),
                    child: SizedBox(
                      child: Center(
                          child: Text('$str1',
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
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 5.3,
                  child: Center(
                    child: ListTile(
                      title: Text(
                        'PUMA India',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                          'As one of the world’s leading sports brands, it’s only natural that we want to stand on the same playing field as the fastest athletes on the planet. '),
                      onTap: () {
                        showDialog<Null>(
                            context: context,
                            barrierDismissible: false,
                            builder: (BuildContext context) {
                              return new AlertDialog(
                                title: Center(child: Text('Clip List')),
                                content: Text('Are you sure want to delete ?'),
                                actions: <Widget>[
                                  FlatButton(
                                    child: new Text('Activate'),
                                    onPressed: () {
                                      setState(() {
                                        print('object');
                                        str2 = 'Active';
                                      });
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  FlatButton(
                                    child: new Text('De-Activate'),
                                    onPressed: () {
                                      setState(() {
                                        str2 = 'Not-Active';
                                      });
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            });
                      },
                      leading: Image.network(
                          'https://1000logos.net/wp-content/uploads/2017/05/PUMA-Logo.png'),
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: MediaQuery.of(context).size.width / 1.45,
                  top: 5,
                  child: Container(
                    decoration: new BoxDecoration(
                        color: Colors.green,
                        borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(10.0),
                            bottomRight: const Radius.circular(10.0))),
                    child: SizedBox(
                      child: Center(
                          child: Text('$str2',
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
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 5.3,
                  child: Center(
                    child: ListTile(
                      title: Text(
                        'Brand Factory',
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                          'Brand Factory is a chain of retail stores operated by Future Group. ... It is Indias largest discount retail chain and offers a wide range of apparel brands in different categories'),
                      leading: Image.network(
                          'https://d2jz4nqvi4omcr.cloudfront.net/brandscollection/2017_search_collection_brandfactory.jpg'),
                      onTap: () {
                        showDialog<Null>(
                            context: context,
                            barrierDismissible: false,
                            builder: (BuildContext context) {
                              return new AlertDialog(
                                title: Center(child: Text('Clip List')),
                                content: Text('Are you sure want to delete ?'),
                                actions: <Widget>[
                                  FlatButton(
                                    child: new Text('Activate'),
                                    onPressed: () {
                                      setState(() {
                                        print('object');
                                        str3 = 'Active';
                                      });
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  FlatButton(
                                    child: new Text('De-Activate'),
                                    onPressed: () {
                                      setState(() {
                                        str3 = 'Not-Active';
                                      });
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            });
                      },
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: MediaQuery.of(context).size.width / 1.45,
                  top: 5,
                  child: Container(
                    decoration: new BoxDecoration(
                        color: Colors.green,
                        borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(10.0),
                            bottomRight: const Radius.circular(10.0))),
                    child: SizedBox(
                      child: Center(
                          child: Text('$str3',
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
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 5.3,
                  child: Center(
                    child: ListTile(
                      title: Text(
                        'Domino India',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                          'Dominos Pizza, Inc., branded as Dominos, is an American multinational pizza restaurant chain founded in 1960. '),
                      leading: Image.network(
                          'https://1000logos.net/wp-content/uploads/2019/07/Domino%E2%80%99s-logo-1996%E2%80%932012.jpg',fit: BoxFit.cover,),
                      onTap: () {
                        showDialog<Null>(
                            context: context,
                            barrierDismissible: false,
                            builder: (BuildContext context) {
                              return new AlertDialog(
                                title: Center(child: Text('Clip List')),
                                content: Text('Are you sure want to delete ?'),
                                actions: <Widget>[
                                  FlatButton(
                                    child: new Text('Activate'),
                                    onPressed: () {
                                      setState(() {
                                        print('object');
                                        str4 = 'Active';
                                      });
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  FlatButton(
                                    child: new Text('De-Activate'),
                                    onPressed: () {
                                      setState(() {
                                        str4 = 'Not-Active';
                                      });
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            });
                      },
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: MediaQuery.of(context).size.width / 1.45,
                  top: 5,
                  child: Container(
                    decoration: new BoxDecoration(
                        color: Colors.green,
                        borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(10.0),
                            bottomRight: const Radius.circular(10.0))),
                    child: SizedBox(
                      child: Center(
                          child: Text('$str4',
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
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 5.3,
                  child: Center(
                    child: ListTile(
                      title: Text(
                        'Reebok India',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      onTap: () {
                        showDialog<Null>(
                            context: context,
                            barrierDismissible: false,
                            builder: (BuildContext context) {
                              return new AlertDialog(
                                title: Center(child: Text('Clip List')),
                                content: Text('Are you sure want to delete ?'),
                                actions: <Widget>[
                                  FlatButton(
                                    child: new Text('Activate'),
                                    onPressed: () {
                                      setState(() {
                                        print('object');
                                        str5 = 'Active';
                                      });
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  FlatButton(
                                    child: new Text('De-Activate'),
                                    onPressed: () {
                                      setState(() {
                                        str5 = 'Not-Active';
                                      });
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            });
                      },
                      subtitle: Text(
                          'This iusb  luwevge rtfgvr v v    rgf vb  bv   v gvb                              gsf fg      g  fg f g fg  f fg  f g f gf g f g f rg gb f b fr gbb  fd b fg b fg hdg hg gh dg h  b fb f b ffgb '),
                      leading: Image.network(
                          'https://img.etimg.com/thumb/width-640,height-480,imgsize-29776,resizemode-1,msid-59023795/reebok-seeks-government-nod-to-open-single-brand-retail-stores.jpgh'),
                    ),
                  ),
                ),
              ),
              Positioned(
                  left: MediaQuery.of(context).size.width / 1.45,
                  top: 5,
                  child: Container(
                    decoration: new BoxDecoration(
                        color: Colors.green,
                        borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(10.0),
                            bottomRight: const Radius.circular(10.0))),
                    child: SizedBox(
                      child: Center(
                          child: Text('$str5',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w400))),
                      height: MediaQuery.of(context).size.width / 15,
                      width: MediaQuery.of(context).size.width / 4,
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget navigationbar() {
    return BottomNavigationBar(
      backgroundColor: Color(0xFF242B42),
      unselectedItemColor: Colors.white,
      unselectedFontSize: 15,
      selectedFontSize: 20,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          title: Text('Owner List'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_books),
          title: Text('Report'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.insert_link),
          title: Text('Provide API'),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }

  Widget myDrawer() {
    return Drawer(
      child: Container(
        color: Colors.lightBlue[200],
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Kunal Singh'),
              accountEmail: Text('kunal@eaddysmart.com'),
              currentAccountPicture:  CircleAvatar(
                        radius: 50, backgroundImage: AssetImage('assets/admin.jpg'),
                      ),
            ),
            ListTile(
              title: Text(
                'Profile',
                style: TextStyle(fontSize: 23),
              ),
              leading: Icon(
                Icons.person,
                size: 25,
              ),
              contentPadding: EdgeInsets.all(10),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
              },
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              title: Text(
                'Complaints',
                style: TextStyle(fontSize: 23),
              ),
              leading: Icon(
                Icons.comment,
                size: 25,
              ),
              contentPadding: EdgeInsets.all(10),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Complaints()));
              },
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              title: Text(
                'Settings',
                style: TextStyle(fontSize: 23),
              ),
              leading: Icon(
                Icons.settings,
                size: 25,
              ),
              onTap: () {},
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              title: Text(
                'Logout',
                style: TextStyle(fontSize: 23),
              ),
              leading: Icon(
                Icons.exit_to_app,
                size: 25,
              ),
              contentPadding: EdgeInsets.all(10),
              onTap: () {

                showDialog<Null>(
                            context: context,
                            barrierDismissible: false,
                            builder: (BuildContext context) {
                              return new AlertDialog(
                                title: Center(child: Text('Clip List')),
                                content: Text('Are you sure want to delete ?'),
                                actions: <Widget>[
                                  FlatButton(
                                    child: new Text('No'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  FlatButton(
                                    child: new Text('Logout'),
                                    onPressed: () {
                                      Navigator.pop(context);
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                                    },
                                  ),
                                ],
                              );
                            });
              },
            ),
            Divider(
              thickness: 2,
            )
          ],
        ),
      ),
    );
  }

  Widget api() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
                child: Text(
              'API Section',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 20,
            ),
            Center(
              child: DropdownButton(
                hint: Text('Choose a shop'), // Not necessary for Option 1
                value: _selectedLocation,
                onChanged: (newValue) {
                  setState(() {
                    _selectedLocation = newValue;
                    email = 'shop4@reebokindia.com';
                  });
                },
                items: _locations.map((location) {
                  return DropdownMenuItem(
                    child: new Text(location),
                    value: location,
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text('API Endpoint',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 30,
            ),
            Form(
                child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                      hintText: email,
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: ' API',
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 35,
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text(
                    'Send',
                    style: TextStyle(fontSize: 20),
                  ),
                  color: Colors.cyanAccent[100],
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
