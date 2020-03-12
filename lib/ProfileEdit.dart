import 'dart:io';

import 'package:admin/profile.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class ProfileEdit extends StatefulWidget {
  @override
  _ProfileEditState createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {

 File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
       appBar: AppBar(
            title: Text('Admin Profile'),
            backgroundColor: Color(0xFF242B42),
            centerTitle: true,
          ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(
                  'Edit Profile',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Name',
                      hintText: 'Kunal Singh',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    controller: new TextEditingController()),
                   
                
                     SizedBox(
                  height: 20,
                ),
                TextFormField(
                    decoration: InputDecoration(
                      labelText: 'E-Mail',
                      hintText: 'Kunal Singh',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    controller: new TextEditingController()),
                     SizedBox(
                  height: 20,
                ),
                TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Mobile',
                      hintText: 'Kunal Singh',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    controller: new TextEditingController()),
                      SizedBox(
                  height: 20,
                ),
                    TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Address',
                      hintText: 'Kunal Singh',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: <Widget>[
                        Text('Profile Picture:   ',style: TextStyle(fontSize: 25),),
                        Card(color: Colors.blue,
                          child: FlatButton(onPressed: getImage, child: Text('Uplode',style: TextStyle(color: Colors.white),)))
                      ],
                    ),

                    SizedBox(height: 20,),

                    Card(
                            color: Colors.green,
                            child: SizedBox(
                                height: 60,
                                width: MediaQuery.of(context).size.width,
                                child: RawMaterialButton(
                                    shape: CircleBorder(),
                                    onPressed: () {
                                    
                                        print('yes');
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                                     
                                    },
                                    child: Text(
                                      'Update',
                                      style: TextStyle(
                                          fontSize: 23, color: Colors.white),
                                    )))),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
