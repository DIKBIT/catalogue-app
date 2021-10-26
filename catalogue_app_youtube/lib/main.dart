import 'package:flutter/material.dart';
import './ui/home.dart';
import './ui/login.dart';
import 'package:google_fonts/google_fonts.dart';

import 'routes.dart';




void main()
{
  runApp( MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      theme: ThemeData(

        // define default brightness and colors
        brightness: Brightness.light,
        primaryColor: Colors.lightBlueAccent,

        appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0.0,
            centerTitle: true,
            iconTheme: IconThemeData(color: Colors.black, )
        ),


        //define default font family,
        fontFamily: GoogleFonts.lato().fontFamily,  //this will keep it default the text style
        //primaryTextTheme: GoogleFonts.latoTextTheme(), // this will change only primary texts
      ),

      debugShowCheckedModeBanner: false,

      //initialRoute: MyRoutes.homeRoute(),
      routes:
      {

        "/": (context) => Home(),  // back slash generally means this will be the first page of the app, we can the sequence according to our preference
        MyRoutes.homeRoute: (context) => Home(),
        MyRoutes.loginRoute: (context) => Login(),
      },




    );
    throw UnimplementedError();
  }

}