import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:homepage/about.dart';
import 'package:homepage/home.dart';
import 'package:flutter/animation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedPage = 0;
  List<Widget> pages = [HomePage(), AboutPage()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Home Page'),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_box), label: 'About')
            ],
            elevation: 10,
            backgroundColor: Colors.white,
            selectedFontSize: 18,
            selectedLabelStyle: TextStyle(color: Colors.white70),
            selectedItemColor: Colors.white70,
            showUnselectedLabels: true,
            selectedIconTheme: IconThemeData(color: Colors.white70),
            type: BottomNavigationBarType.shifting,
            currentIndex: selectedPage,
            onTap: (int a) {
              setState(() {
                selectedPage = a;
              });
            },
          ),
          body: AnimatedSwitcher(
            transitionBuilder: (w, t) {
              return FadeTransition(child: w, opacity: t);
            },
            duration: Duration(milliseconds: 400),
            switchInCurve: Curves.easeInOut,
            child: pages.elementAt(selectedPage),
          ),
        ),
      ),
    );
  }
}
