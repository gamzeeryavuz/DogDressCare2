

import 'package:dogcare/TrendPage.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/svg.dart';

import 'body.dart';
import 'constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text('DOGS FASHION'  ,
      style: TextStyle(
        color: Color(0XFF064BB5),
        fontWeight: FontWeight.w900,
        fontSize: 18, 
        ),
      
      ),
      backgroundColor: Color(0XFFBCFF5E),
      elevation: 0,
      leading: IconButton(
          icon: SvgPicture.asset("assets/images/back.svg"), onPressed: () {}),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "assets/images/search.svg",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/images/cart.svg",
            // By default our  icon color is white
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
