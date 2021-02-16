import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png",fit: BoxFit.cover),
            SizedBox(height: 20,),
            Text("Welcome",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(decoration: InputDecoration(
                hintText: "Enter User Name",
                labelText: "User Name",
                labelStyle: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 24
                )
              ),
              ),
              TextFormField(
                obscureText: true,
                obscuringCharacter: "&",
                decoration: InputDecoration(
                hintText: "Enter Password",
                labelText: "Password",
                labelStyle: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 24
                )
              ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: (){}, child: Text("Login"),style:TextButton.styleFrom()),

                ],
              ),
            )
          ],
        )
  );
  }
}
