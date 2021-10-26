

import 'package:catalogue_app_youtube/routes.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget
{
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login>
{

  String name ="";
  bool changeButton = false;

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();


  // void validationUsernamePassword()
  // {
  //   setState(() {
  //     String username = String.parse(_usernameController.text);
  //
  //   });
  //
  // }







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(" Login Page"),
        backgroundColor: Colors.lightBlueAccent,
      ),

      body: Center(
          child: SingleChildScrollView( //to make the screen scrollable, so that there is no ever when space is less on the screen

            // since we need validation so that without anything written on the the username and password, it shouldn't get to home page.
            // but before using form , column widget was used which didn't provide these types of facilities so now we are going to wrap it up
            // in form widget
            
            
            
              child: Form(   // this form widget needs a key which is declared upwards.
                key: formKey,
                child: Column(
                  children: [
                    Image.asset("assets/images/login_image.png", height: 300.0,
                      width: 300.0,),

                    const SizedBox( //instead of using padding we can use this method to create space, we can even write anything on this
                      height: 40.0,
                      child: Text("Happy Login"),
                    ),

                    Text("Welcome $name",
                      style: TextStyle(
                        fontSize: 25.5,
                        fontWeight: FontWeight.bold,
                      )),


                    //before when the formfield was not kept in columns, then the two forms where close to each other and to provide spacing between
                    // the two we have to give spacing to both of them. so it to avoid that condition we wrap up it a column giving it padding
                    Padding
                      (padding: EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 32.0),
                        child: Column(
                          children: [
                            TextFormField(
                              controller: _usernameController,
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(
                                hintText: "Enter Username",
                                labelText: "Username",
                                icon: Icon(Icons.person),
                              ),



                              onChanged: (value)  //onchanged function is adding whatever name is being added to the username
                              {
                                name = value;
                                setState(() {   //calling build method again to reload the login page to add name beside welcome

                                });
                              }
                            ),


                            TextFormField(
                              controller: _passwordController,
                              obscureText: true,
                              decoration: const InputDecoration(
                                hintText: "Enter password",
                                labelText: "Password",
                                icon: Icon(Icons.lock),
                              ),



                            )

                          ],

                        )
                    ),

                    const SizedBox(
                      width: 20.0,
                      height: 20.0,
                    ),


                    // creating animated login button

                    // to make the container clickable , wrap up with inkwell or gesture detector. but gesture detector doesn't have any ui effects,
                    // no feedback is given

                    // we used inkwell but still the ripple effect is not active. we have to give decoration to the material widget.
                    Material(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(changeButton? 50.0 : 10.0),
                      child: InkWell(
                          onTap: () async {
                            setState(() {
                              changeButton = true;

                            });

                            // after tapping login button, it will wait for 1second and go to home page.
                            await Future.delayed(Duration(seconds: 1));
                            Navigator.pushNamed(context, MyRoutes.homeRoute);
                          },
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1), //take one second time and do the animation with this button
                            width:  changeButton? 50 :150.0,  //when this button is tapped it will change from 150 to 50 in 1sec.
                            height: 50,
                            alignment: Alignment.center,
                            child: changeButton? Icon(Icons.done):Text("LOGIN",
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900, fontSize: 13.0),) ,


                              // shape: changeButton? BoxShape.circle: BoxShape.rectangle,  // when tapped change it to cirular.

                            ),
                          )
                      ),



                    // ElevatedButton(
                    //     onPressed: () {
                    //
                    // },
                    //     child: Text("LOGIN"))


                  ],),
              )

          )

      ),


    );
  }
}






  
