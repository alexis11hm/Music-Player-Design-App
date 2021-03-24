import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:music_player_sample/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      darkTheme: ThemeData.dark(),
      routes: {'home': (BuildContext context) => HomePage()},
    );
  }
}
