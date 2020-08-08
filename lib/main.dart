// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import './register_page.dart';
import './signin_page.dart';

///void main() => runApp(MyApp());
/// class MyApp extends StatelessWidget {
//  final String name = 'foo';
//  final FirebaseOptions options = const FirebaseOptions(
//    googleAppID: '1:297855924061:ios:c6de2b69b03a5be8',
//    gcmSenderID: '297855924061',
//    apiKey: 'AIzaSyBq6mcufFXfyqr79uELCiqM_O_1-G72PVU',
//  );
//
//  Future<void> _configure() async {
//    final FirebaseApp app = await FirebaseApp.configure(
//      name: name,
//      options: options,
//    );
//    assert(app != null);
//    print('Configured $app');
//  }
///

void main() async {
  // TODO(Salakar): Firebase should be initialized via a FutureBuilder or a StatefulWidget,
  // this is a quick & dirty way to initialize it with the least amount of code changes,
  // to minimise code conflicts when Auth rework lands.
  runApp(MyApp());
}

class Firebase {
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Energon Login - Test 02',
      home: MyHomePage(title: 'Energon Login - 02'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FirebaseUser user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: RaisedButton(
              child: const Text('Energon registration 02'),
              onPressed: () => _pushPage(context, RegisterPage()),
            ),
            padding: const EdgeInsets.all(16),
            alignment: Alignment.center,
          ),
          Container(
            child: RaisedButton(
              child: const Text('Energon SignIn/SignOut 02'),
              onPressed: () => _pushPage(context, SignInPage()),
            ),
            padding: const EdgeInsets.all(16),
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }

  void _pushPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) => page),
    );
  }
}
