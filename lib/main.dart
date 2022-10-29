//import 'dart:html';

import 'package:chatty/pages/slide2.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() => runApp(MyApp());

// lgsg clik flutter statels widget agar bikin class secara cepat
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SafeArea;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: slide2(),
      theme: ThemeData(fontFamily: 'Poppins'),
    );
  }
}
