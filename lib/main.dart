import 'package:disenos/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:disenos/screens/basic_design.dart';
import 'package:flutter/services.dart';

import 'screens/home_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith( 
      statusBarColor: Colors.transparent,
      
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'basic_design': ( _ ) => BasicDesignScreen(),
        'scroll_screen': ( _ ) => ScrollScreen(),
        'home_screen': ( _ ) =>HomeScreen(),
      },
    );
  }
}
