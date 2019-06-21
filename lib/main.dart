import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/home_page.dart';

final ThemeData kDefaultTheme = new ThemeData(
  primaryColor: Colors.white,
  brightness: Brightness.light,
);

  main() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.grey[200],
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
    runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Messenger UI Clone',
        theme: kDefaultTheme,
        home: HomePage(),
      ),
    );
}
