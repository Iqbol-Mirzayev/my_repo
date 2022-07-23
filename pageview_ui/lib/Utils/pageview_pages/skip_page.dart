import 'package:flutter/material.dart';
import 'package:pageview_ui/Utils/log_in_page/log_in_page.dart';
import 'package:pageview_ui/Utils/pageview_pages/pages1.dart';
import 'package:pageview_ui/Utils/pageview_pages/pages2.dart';
import 'package:pageview_ui/Utils/pageview_pages/pages3.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SkipPage extends StatefulWidget {
  SkipPage({Key? key}) : super(key: key);

  @override
  State<SkipPage> createState() => _SkipPageState();
}

class _SkipPageState extends State<SkipPage> {
  PageController _controller = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            controller: _controller,
            scrollDirection: Axis.horizontal,
            children: [Pages1(), Pages2(), Pages3()],
          ),
          Container(
            alignment: Alignment(0, 0.75),
            child: Column(
              verticalDirection: VerticalDirection.up,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red.shade400,
                    ),
                    height: 56,
                    width: 311,
                    child: onLastPage
                        ? GestureDetector(
                            onTap: (() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return LoginPage();
                                  },
                                ),
                              );
                            }),
                            child: Center(child: Text("Done")),
                          )
                        : GestureDetector(
                            onTap: (() {
                              _controller.nextPage(
                                  duration: Duration(milliseconds: 200),
                                  curve: Curves.easeIn);
                            }),
                            child: Center(child: Text("Next")),
                          ),
                  ),
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: WormEffect(
                    dotColor: Colors.grey,
                    activeDotColor: Colors.blue,
                    dotHeight: 5,
                    dotWidth: 5,
                    spacing: 8,
                    offset: 8,
                    strokeWidth: 10,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
