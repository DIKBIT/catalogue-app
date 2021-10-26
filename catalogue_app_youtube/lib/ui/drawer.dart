import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {

    // adding photo from web browser
    final imageUrl = "https://imagesvc.meredithcorp.io/v3/mm/image?url=https://static.onecms.io/wp-content/uploads/sites/14/2017/04/14/041417-emma-watson-earrings-21.jpg";
    return  Drawer(
      child: Container(
        color: Colors.lightBlueAccent,
        child: ListView(
            //padding: EdgeInsets.zero,
          children: [
             DrawerHeader(
               padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.lightBlueAccent,
                      boxShadow:[
                    BoxShadow(color: Colors.lightBlueAccent),
                  ] ),
                  margin: EdgeInsets.zero,
                  accountName: Text("Diksha Prasad", style: TextStyle( color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                  accountEmail: Text(" diksha.prasad96@gmail.com", style: TextStyle( color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500)),
                //currentAccountPicture: Image.network(imageUrl),

                //if you want the picture to be circular in shape.
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),)),
            ListTile(
              leading : Icon(CupertinoIcons.profile_circled,color: Colors.white),
              title: Text("Me", style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),),

            ListTile(
              leading : Icon(CupertinoIcons.home,color: Colors.white),
              title: Text("Home", style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),),

            ListTile(
              leading : Icon(CupertinoIcons.mail_solid,color: Colors.white),
              title: Text("Contact me ", style: TextStyle(color: Colors.white),textScaleFactor: 1.2,),)



          ],

        ),
      ),

    );
    throw UnimplementedError();
  }
  
}