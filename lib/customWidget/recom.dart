import 'package:flutter/material.dart';
import 'package:nursery/constants.dart';

class Recommended extends StatelessWidget {
  const Recommended({
    Key key,
    this.text,
    this.button,
  }) : super(key: key);
  final String text;
  final Function button;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: 30,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            //Stack(
            //children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                '$text',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            // Positioned(
            //   left: 0,
            //   right: 0,
            //   bottom: 0,
            //   child: Container(
            //     height: 7,
            //     color: primaryColor.withOpacity(0.2),
            //   ),
            // ),
            // ],
            // ),
            Spacer(),
            FlatButton(
                padding: EdgeInsets.symmetric(vertical: 4),
                onPressed: button,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: primaryColor,
                child: Text(
                  'more',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
