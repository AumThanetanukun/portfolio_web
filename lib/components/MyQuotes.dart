import 'package:flutter/material.dart';
import 'package:portfolio_web/models/Quote.dart';

class MyQuotes extends StatefulWidget {
  MyQuotes({Key? key}) /* : super(key: key)*/;

  @override
  _MyQuotesState createState() => _MyQuotesState();
}

class _MyQuotesState extends State<MyQuotes> {
  int _counter = 0;

  void _decrementCounter() {
    setState(() {
      _counter--;
      if (_counter < 0) _counter = quotes.length - 1;
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      if (_counter == quotes.length) _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FittedBox(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.all(15),
              // decoration: BoxDecoration(
              //   color: Colors.yellowAccent,
              //   borderRadius: BorderRadius.circular(34),
              // ),
              child: Column(
                children: <Widget>[
                  // Container(
                  //   padding: EdgeInsets.all(10),
                  //   height: 38,
                  //   width: 38,
                  //   decoration: BoxDecoration(
                  //     shape: BoxShape.circle,
                  //   ),
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       color: Colors.yellowAccent,
                  //       shape: BoxShape.circle,
                  //     ),
                  //   ),
                  // ),
                  SizedBox(width: 15),
                  Text(
                    quotes[_counter].passage,
                    style: TextStyle(
                      fontSize: 21,
                    ),
                  ),
                  Text(
                    '- ' + quotes[_counter].speaker + ' -',
                  ),
                  SizedBox(width: 15),
                ],
              ),
            ),
          ),
          Row(
            children: <Widget>[
              FloatingActionButton(
                // first FAB to perform decrement
                onPressed: _decrementCounter,
                child: Icon(Icons.chevron_left_rounded),
              ),
              FloatingActionButton(
                // second FAB to perform increment
                onPressed: _incrementCounter,
                child: Icon(Icons.chevron_right_rounded),
              ),
            ],
          )
        ],
      ),
    );
  }
}
