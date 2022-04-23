import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 162.0, start: 30.0),
            Pin(size: 34.0, start: 55.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 54.0, end: 0.0),
                  Pin(size: 25.0, end: 3.0),
                  child: Text(
                    'Home',
                    style: TextStyle(
                      fontFamily: 'logo',
                      fontSize: 18,
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w900,
                    ),
                    softWrap: false,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 30.0,
                    height: 16.0,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0),
                          Pin(size: 4.0, end: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff000000),
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 23.0,
                            height: 4.0,
                            decoration: BoxDecoration(
                              color: const Color(0xff000000),
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 15.0,
                            height: 4.0,
                            decoration: BoxDecoration(
                              color: const Color(0xff000000),
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 120.0, middle: 0.999),
                  Pin(size: 34.0, start: 55.0),
                  child: const Text.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'logo',
                        fontSize: 25,
                        color: Color(0xff000000),
                      ),
                      children: [
                        TextSpan(
                          text: 'F',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(
                          text: 'oo',
                          style: TextStyle(
                            color: Color(0xff707070),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        TextSpan(
                          text: 'd',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                    textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                    softWrap: false,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 30.0, end: -66.0),
            Pin(size: 258.0, start: -49.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 182.0, start: 0.0),
                  Pin(size: 55.0, end: 34.0),
                  child: Text(
                    'Hungry?',
                    style: TextStyle(
                      fontFamily: 'logo',
                      fontSize: 40,
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w900,
                    ),
                    softWrap: false,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: SizedBox(
                    width: 140.0,
                    height: 34.0,
                    child: Text(
                      'Order & Eat',
                      style: TextStyle(
                        fontFamily: 'logo',
                        fontSize: 25,
                        color: const Color(0xff707070),
                        fontWeight: FontWeight.w300,
                      ),
                      softWrap: false,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 241.0, end: 0.0),
                  Pin(start: 0.0, end: 15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage('assets/images/img2.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
//  menu
          Pinned.fromPins(
            Pin(size: 169.0, start: 30.0),
            Pin(size: 27.0, middle: 0.2800),
            child: Text(
              'Today’s Menu',
              style: TextStyle(
                fontFamily: 'logo',
                fontSize: 20,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w900,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 11.0, end: 0.0),
            Pin(size: 295.0, middle: 0.4564),
            child: SingleChildScrollView(
              primary: false,
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                width: 474.0,
                height: 295.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromPins(
                      Pin(size: 228.0, start: 9.0),
                      Pin(start: 28.0, end: 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage('assets/images/img3.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(17.0),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 228.0, end: -66.0),
                      Pin(start: 28.0, end: 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage('assets/images/img4.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(17.0),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
//End Menu

// show Menu
          Pinned.fromPins(
            Pin(start: 14.0, end: 13.0),
            Pin(size: 147.0, middle: 0.8800),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 151.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage('assets/images/img5.png'),
                        fit: BoxFit.fill,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 7),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    width: 242.0,
                    height: 54.0,
                    child: Text(
                      'Chicken and mango salsa \nwith Thai rice berry',
                      style: TextStyle(
                        fontFamily: 'logo',
                        fontSize: 20,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w900,
                      ),
                      softWrap: false,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 165.0, middle: 0.6737),
                  Pin(size: 70.0, end: 17.0),
                  child: Text(
                    'This is a simple, tasty, and nutritious \nrecipe! This dish is ideal for any light \nsupper. I enjoy utilizing my Thai rice \nberries since they are nutrient-dense \nand high in antioxidants.',
                    style: TextStyle(
                      fontFamily: 'logo',
                      fontSize: 10,
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w300,
                    ),
                    softWrap: false,
                  ),
                ),
              ],
            ),
          ),
// End show menu
        ],
      ),
    );
  }
}
