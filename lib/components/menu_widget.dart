import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_challenge_googlemaps/components/about_panels.dart';
import 'package:flutter_challenge_googlemaps/components/calculate_power.dart';
import 'package:flutter_challenge_googlemaps/helper/ui_helper.dart';
import 'package:flutter_challenge_googlemaps/home_page.dart';

/// Drawer Menu
class MenuWidget extends StatelessWidget {
  final num currentMenuPercent;
  final Function(bool) animateMenu;

  MenuWidget({Key key, this.currentMenuPercent, this.animateMenu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return currentMenuPercent != 0
        ? Positioned(
            left: realW(-358 + 358 * currentMenuPercent),
            width: realW(358),
            height: screenHeight,
            child: Opacity(
              opacity: currentMenuPercent,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(realW(50))),
                  boxShadow: [
                    BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.16), blurRadius: realW(20)),
                  ],
                ),
                child: Stack(
                  children: <Widget>[
                    NotificationListener<OverscrollIndicatorNotification>(
                      onNotification: (notification) {
                        notification.disallowGlow();
                      },
                      child: CustomScrollView(
                        physics: NeverScrollableScrollPhysics(),
                        slivers: <Widget>[
                          SliverToBoxAdapter(
                            child: Container(
                              height: realH(236),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(realW(50))),
                                  gradient: const LinearGradient(begin: Alignment.topLeft, colors: [
                                    Color(0xFF59C2FF),
                                    Color(0xFF1270E3),
                                  ])),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    left: realW(10),
                                    bottom: realH(27),
                                    child: Image.asset(
                                      "assets/avatar.png",
                                      width: realH(120),
                                      height: realH(120),
                                    ),
                                  ),
                                  Positioned(
                                    left: realW(135),
                                    top: realH(110),
                                    child: DefaultTextStyle(
                                      style: TextStyle(color: Colors.white),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "User Name",
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: realW(18)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SliverPadding(
                            padding: EdgeInsets.only(left: realW(20)),
                            sliver: SliverToBoxAdapter(
                              child: ListTile(
                                title: Text(
                                  'Home',
                                  style: TextStyle(color: Colors.black, fontSize: realW(20)),
                                ),
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute <void> (
                                      builder: (BuildContext context) => GoogleMapPage()
                                  ));
                                },
                              ),
                            ),
                          ),
                          SliverPadding(
                            padding: EdgeInsets.only(left: realW(20)),
                            sliver: SliverToBoxAdapter(
                              child: ListTile(
                                title: Text(
                                  'About Solar Panels',
                                  style: TextStyle(color: Colors.black, fontSize: realW(20)),
                                ),
                                onTap: () {
                            Navigator.push(context, MaterialPageRoute <void> (
                            builder: (BuildContext context) => about_panels()
                            ));
                            },
                              ),
                            ),
                          ),
                          SliverPadding(
                            padding: EdgeInsets.only(left: realW(20)),
                            sliver: SliverToBoxAdapter(
                              child: ListTile(
                                title: Text(
                                  'Calculate The Power',
                                  style: TextStyle(color: Colors.black, fontSize: realW(20)),
                                ),
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute <void> (
                                      builder: (BuildContext context) => CalculatePower()
                                  ));
                                },
                              ),
                            ),
                          ),
                          SliverPadding(
                            padding: EdgeInsets.only(left: realW(20)),
                            sliver: SliverToBoxAdapter(
                              child: Text(
                                'Settings',
                                style: TextStyle(color: Colors.black, fontSize: realW(20)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    // close button
                    Positioned(
                      bottom: realH(53),
                      right: 0,
                      child: GestureDetector(
                        onTap: () {
                          animateMenu(false);
                        },
                        child: Container(
                          width: realW(71),
                          height: realH(71),
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: realW(17)),
                          child: Icon(
                            Icons.close,
                            color: Color(0xFFE96977),
                            size: realW(34),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFFB5E74).withOpacity(0.2),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(realW(36)), topLeft: Radius.circular(realW(36))),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        : const Padding(padding: EdgeInsets.all(0));
  }
}
