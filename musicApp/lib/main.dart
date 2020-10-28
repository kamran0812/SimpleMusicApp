import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => Home(),
    },
  ));
}
