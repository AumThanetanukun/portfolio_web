import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Text(
            "Aum Thanetanukun",
            // style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
