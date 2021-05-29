import 'package:flutter/material.dart';
import 'package:portfolio_web/components/CustomAppBar.dart';
import 'package:portfolio_web/components/MyQuotes.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aum Thanetanukun",
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width  of our screen
    return Scaffold(
      body: Container(
        // height: size.height,
        // width: size.width,
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("assets/images/bg.png"),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomAppBar(),
            // Spacer(),
            MyQuotes(),
            // Spacer(
            //   flex: 2,
            // ),
          ],
        ),
      ),
    );
  }
}
