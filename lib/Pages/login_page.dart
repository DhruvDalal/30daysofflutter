import 'package:flutter/material.dart';
import 'package:flutter_catalog/Utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final keys = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if (keys.currentState.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: keys,
            child: Column(
              children: [
                Image.asset("assets/images/new_login.png", fit: BoxFit.cover),
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
                              TextStyle(color: Colors.blue[900], fontSize: 24),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'plesae Enter the User Name';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        obscuringCharacter: "&",
                        decoration: InputDecoration(
                            hintText: "Enter Password",
                            labelText: "Password",
                            labelStyle: TextStyle(
                                color: Colors.blue[900], fontSize: 24)),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'plesae Enter the password';
                          } else if (value.length <= 8) {
                            return "Password should contain atleast 8 character";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 20 : 8),
                        child: InkWell(
                          //splashColor: Colors.red,
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 1),
                            height: 50,
                            width: changeButton ? 50 : 150,
                            alignment: Alignment.center,
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
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
