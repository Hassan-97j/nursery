import 'package:flutter/material.dart';
import 'package:nursery/constants.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key key,
    this.image,
    this.title,
    this.country,
    this.press,
    this.price,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(left: 20, top: 10, bottom: 10),
        width: size.width * 0.4,
        child: Column(
          children: <Widget>[
            Image.asset(
              image,
              fit: BoxFit.contain,
            ),
            Container(
              width: size.width * 0.4,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: primaryColor.withOpacity(0.23))
                  ]),
              child: Row(
                children: <Widget>[
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: '$title\n'.toUpperCase(),
                        style: TextStyle(color: Colors.black)),
                    TextSpan(
                        text: '$country'.toUpperCase(),
                        style: TextStyle(color: Colors.black))
                  ])),
                  Spacer(),
                  Text('\S$price'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
