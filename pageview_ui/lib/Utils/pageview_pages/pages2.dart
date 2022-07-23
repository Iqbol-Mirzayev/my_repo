import 'package:flutter/material.dart';

class Pages2 extends StatelessWidget {
  Pages2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/pic2.png",fit: BoxFit.contain,),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(
                child: Text(
              "Find a course\n for you",
              maxLines: 2,
              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
            )),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Center(
                child: Text(
              "Quarantine is the perfect time to spend your day learning something new, from anywhere! ",
              maxLines: 2,
              style: TextStyle(fontSize: 17),
            )),
          ),
        ],
      ),
    );
  }
}
