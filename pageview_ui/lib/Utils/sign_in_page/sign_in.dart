import 'package:flutter/material.dart';
import 'package:pageview_ui/Utils/log_in_page/log_in_page.dart';
import 'package:pageview_ui/Utils/sign_in_page/sign_inputtext.dart';

class SignIN extends StatelessWidget {
  const SignIN({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ),
                );
              },
              icon: Icon(Icons.arrow_back),
            ),
            Center(
              child: Image.asset("assets/images/pic5.png"),
            ),
            Column(
              children: const [
                Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Create your account",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black45,
                    ),
                  ),
                ),
                InputText(name: "Name"),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: InputText(name: "Email"),
                ),
                InputText(name: "Password"),
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text("Sign In",style: TextStyle(color: Colors.white,fontSize: 20),),
                ),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Center(
                  child: Text(
                    "Log In",
                    style: TextStyle(fontSize: 15,color: Colors.black),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
