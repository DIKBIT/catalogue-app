import 'package:catalogue_app_youtube/ui/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    int days = 30;
    String name = "Flutter";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,

        title: Text("Catalogue app",textAlign: TextAlign.center),



      ),
      body:  Center(
        child: Container(
          child: Text("Making Catalogue app",
          textAlign: TextAlign.center,
          ),

        ),

      ),

      drawer: MyDrawer(

      ),

    );

  }
  
}