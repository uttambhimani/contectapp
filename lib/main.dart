import 'dart:async';
import 'package:contectapp/detail.dart';
import 'package:contectapp/home.dart';
import 'package:flutter/material.dart';

bool themeData = true;
StreamController<bool> data = StreamController();

void main() {
  ThemeData dark =
  ThemeData(primarySwatch: Colors.blue
      ,backgroundColor: Colors.black,primaryColor: Colors.amber,scaffoldBackgroundColor: Colors.black);

  ThemeData light =
  ThemeData(primarySwatch: Colors.green, brightness: Brightness.light,backgroundColor: Colors.white);

  runApp(
    StreamBuilder(
      stream: data.stream,
      initialData: true,
      builder: (context, snapshot) {
        return MaterialApp(
          theme: snapshot.data == true? light:dark,
          debugShowCheckedModeBanner: false,
          routes: {
            '/': (context) => home(),
            '/cd': (context) => calldetails(),
          },
        );
      },
    ),
  );
}