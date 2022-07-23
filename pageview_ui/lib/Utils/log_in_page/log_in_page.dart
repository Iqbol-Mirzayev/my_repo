import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pageview_ui/Utils/log_in_page/input_gap.dart';
import 'package:pageview_ui/Utils/log_in_page/networks.dart';
import 'package:pageview_ui/Utils/sign_in_page/sign_in.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
                flex: 1, child: Lottie.asset("assets/images/lotti/lotti.json")),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  const Text(
                    "LOG IN",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Login with social networks",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Networks(Icons: "assets/images/facebook.png"),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Networks(Icons: "assets/images/instagram.png"),
                      ),
                      Networks(Icons: "assets/images/google.png"),
                    ],
                  ),
                  InputGap(letter: "Name"),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: InputGap(letter: "Password"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text("Forgot password ?"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SignIN();
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red.shade400),
                      child: Center(
                        child: Text(
                          "LOG IN ",
                          
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Center(
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(color: Colors.black),
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
