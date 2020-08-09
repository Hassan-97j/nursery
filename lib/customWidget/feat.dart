import 'package:flutter/material.dart';

class Featured extends StatelessWidget {
  const Featured({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(top: 20, bottom: 20),
        width: size.width * 0.8,
        height: 180,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage('$image'))),
      ),
    );
  }
}
