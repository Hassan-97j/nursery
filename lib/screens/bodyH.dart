import 'package:flutter/material.dart';
//import 'package:nursery/constants.dart';
import 'package:nursery/customWidget/feat.dart';
//import 'package:flutter_svg/flutter_svg.dart';
//import 'package:nursery/constants.dart';
import 'package:nursery/customWidget/headerbox.dart';
import 'package:nursery/customWidget/card.dart';
import 'package:nursery/customWidget/recom.dart';
import 'package:nursery/screens/details.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          HeaderBox(),
          Recommended(
            text: 'Recommended',
            button: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Details()));
            },
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                MyCard(
                  image: 'assets/images/image_1.png',
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Details()));
                  },
                  title: 'Shafeeq',
                  country: 'Russia',
                  price: 100,
                ),
                MyCard(
                  image: 'assets/images/image_2.png',
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Details()));
                  },
                  title: 'Tameem',
                  country: 'Japan',
                  price: 247,
                ),
                MyCard(
                  image: 'assets/images/image_3.png',
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Details()));
                  },
                  title: 'Mark',
                  country: 'Australia',
                  price: 368,
                ),
                MyCard(
                  image: 'assets/images/image_1.png',
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Details()));
                  },
                  title: 'Ubaid',
                  country: 'Thailand',
                  price: 86,
                ),
                MyCard(
                  image: 'assets/images/image_2.png',
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Details()));
                  },
                  title: 'Ahmed',
                  country: 'USA',
                  price: 592,
                ),
                MyCard(
                  image: 'assets/images/image_3.png',
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Details()));
                  },
                  title: 'Shafeeq',
                  country: 'Russia',
                  price: 100,
                ),
              ],
            ),
          ),
          Recommended(
            text: 'Featured Plants',
            button: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Details()));
            },
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Featured(
                  image: 'assets/images/bottom_img_1.png',
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Details()));
                  },
                ),
                Featured(
                  image: 'assets/images/bottom_img_2.png',
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Details()));
                  },
                ),
                Featured(
                  image: 'assets/images/bottom_img_1.png',
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Details()));
                  },
                ),
                Featured(
                  image: 'assets/images/bottom_img_2.png',
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Details()));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
