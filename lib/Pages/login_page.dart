import 'package:flutter/material.dart';
import 'package:flutter_catalog/Pages/home_page.dart';
import 'package:flutter_catalog/Utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome, $name",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                      decoration: InputDecoration(
                          hintText: "Enter User Name",
                          labelText: "User Name",
                          labelStyle:
                              TextStyle(color: Colors.blue[900], fontSize: 24)),
                    ),
                    TextFormField(
                      obscureText: true,
                      obscuringCharacter: "&",
                      decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                          labelStyle:
                              TextStyle(color: Colors.blue[900], fontSize: 24)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = !changeButton;
                        });
                        await Future.delayed(Duration(seconds: 1));
                         Navigator.pushNamed(context, MyRoutes.homeRoute);
                        
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 1),
                        height: 50,
                        width: changeButton ? 50 : 150,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          // shape: changeButton?BoxShape.circle:BoxShape.rectangle,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 20 : 8),
                          color: Colors.deepPurple,
                        ),
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                                size: 35,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                      ),
                    )
                    // ElevatedButton(
                    //     onPressed: () {
                    //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //     },
                    //     child: Text("Login"),
                    //     style:
                    //         TextButton.styleFrom(minimumSize: Size(150, 40))),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
