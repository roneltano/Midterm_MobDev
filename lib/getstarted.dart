import 'package:flutter/material.dart';
import 'dart:async';
import 'widgets/slidesitem.dart';
import 'splashscreen.dart';
import '/widgets/slidesitem.dart';
import 'model/slide.dart';
import 'widgets/favescreen.dart';
import 'widgets/slidedots.dart';

void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Splash(),
));

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({Key? key}) : super(key: key);
  @override
  _GetStartedScreenState createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
        _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Container(
                  child: Text(
                    "kcal",
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily:'Raleway',
                        fontWeight: FontWeight.bold,
                        color: Colors.purple[400]),
                  ),
                ),
                Expanded(
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: <Widget>[
                      PageView.builder(
                        scrollDirection: Axis.horizontal,
                        controller: _pageController,
                        onPageChanged: _onPageChanged,
                        itemCount: slideList.length,
                        itemBuilder: (ctx, i) => SlideItems(i),
                      ),
                      Stack(
                        alignment: AlignmentDirectional.topStart,
                        children: <Widget>[
                          Container(
                              margin: const EdgeInsets.only(bottom: 35),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  for (int i = 0; i < slideList.length; i++)
                                    if (i == _currentPage)
                                      Slidedots(true)
                                    else
                                      Slidedots(false)
                                ],
                              ))
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    FlatButton(
                      child: const Text(
                        "Get Started",
                        style: TextStyle(fontSize: 18, fontFamily:'fonts/Raleway-Bold.ttf'),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      padding: const EdgeInsets.all(15),
                      color: Colors.purple[400],
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => FaveScreen()));
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text('Already Have an account?',
                            style: TextStyle(fontSize: 15,fontFamily:'fonts/Raleway-Bold.ttf')),
                        TextButton(
                          onPressed: () {},
                          child: Text('Login',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily:'fonts/Raleway-Bold.ttf',
                                color: Colors.purple[400],
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
