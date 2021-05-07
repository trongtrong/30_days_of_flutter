import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'day1.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget menuIcons(
        BuildContext context, Icon icon, String title, Widget nextPage) {
      return Container(
        decoration: BoxDecoration(
            border: BorderDirectional(
                bottom: BorderSide(color: const Color(0xFFCCCCCC)),
                end: const BorderSide(color: const Color(0xFFCCCCCC)))),
        child: InkWell(
          onTap: () {},
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon,
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Text(title),
                )
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: const Text('Flutter Demos Gallery'),
      ),
      backgroundColor: Colors.white,
      body: GridView.count(
        crossAxisCount: 3,
        primary: false,
        children: [
          menuIcons(
              context,
              Icon(FontAwesomeIcons.stopwatch,
                  size: 48.0, color: Color(0xFFFF856C)),
              'Day1',
              Day1Page()),
        ],
      ),
    );
  }
}
