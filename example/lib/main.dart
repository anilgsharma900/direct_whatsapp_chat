import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:plugins/plugins.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  Future<void> openWhatsapp() async {
    await Plugins.sendSingleMessage("918308702798", "open_whatsapp");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('open_whatsapp'),
        ),
        body: Center(
          child: InkWell(child: Text('Open Whatsapp'),onTap: openWhatsapp,),
        ),
      ),
    );
  }
}