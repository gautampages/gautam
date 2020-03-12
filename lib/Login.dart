import 'dart:io';

import 'package:admin/Home.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color(0xFF85C1E9),
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed:() 
          {
            exit(0);
          }),
          title: Text('Admin Login'),
          backgroundColor: Color(0xFF242B42),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              Image.asset('assets/Logo.png'),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Form(
                  autovalidate: true,
                    key: _key,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: 'Username',
                              labelStyle:
                                  TextStyle(color: Colors.white, fontSize: 20),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          validator: (val) {
                            if (val.isEmpty) {
                              return 'Enter valid username..';
                            } else {
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              labelText: 'Password',
                              labelStyle:
                                  TextStyle(color: Colors.white, fontSize: 20),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8))),
                          validator: (val) {
                            if (val.isEmpty) {
                              return 'Enter valid username..';
                            } else {
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Card(
                            color: Colors.green,
                            child: SizedBox(
                                height: 60,
                                width: MediaQuery.of(context).size.width,
                                child: RawMaterialButton(
                                    shape: CircleBorder(),
                                    onPressed: () {
                                      if (_key.currentState.validate()) {
                                        print('yes');
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                                      }
                                    },
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                          fontSize: 23, color: Colors.white),
                                    )))),
                        Text('Forgot password?',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 20,
                                fontWeight: FontWeight.w500))
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
