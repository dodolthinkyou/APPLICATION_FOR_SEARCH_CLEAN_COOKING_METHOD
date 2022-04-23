import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDDirections extends StatelessWidget {
  XDDirections({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 425.0, start: 0.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/img11.jpg'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(width: 1.0, color: const Color(0x00000000)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 400.0, start: 21.0),
            Pin(size: 100.0, middle: 0.500),
            child: Text(
              'Egg toast',
              style: TextStyle(
                fontFamily: 'logo',
                fontSize: 50,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w900,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 400.0, start: 21.0),
            Pin(size: 41.0, middle: 0.5600),
            child: Text(
              'Ingredients',
              style: TextStyle(
                fontFamily: 'logo',
                fontSize: 30,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w900,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 50.0, end: 49.0),
            Pin(size: 110.0, middle: 0.680),
            child: Text(
              '1 slice of your favorite kind of bread\n1 tablespoon butter\n1 egg\nSalt and freshly ground black pepper',
              style: TextStyle(
                fontFamily: 'logo',
                fontSize: 15,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w300,
                height: 2,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 200.0, start: 23.0),
            Pin(size: 41.0, middle: 0.770),
            child: Text(
              'Directions',
              style: TextStyle(
                fontFamily: 'logo',
                fontSize: 30,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w900,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 302.0, start: 90.0),
            Pin(size: 140.0, middle: 0.9400),
            child: Text(
              'With a biscuit cutter or the rim of a glass, press a hole in the center of the slice of bread.',
              style: TextStyle(
                fontFamily: 'logo',
                fontSize: 15,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w300,
                height: 2,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 302.0, start: 90.0),
            Pin(size: 140.0, middle: 1.04),
            child: Text(
              'Heat a skillet over medium-low heat and melt in the butter. When the butter is all spread out, place the slice of bread in the skillet and crack the egg straight into the center of the hole.',
              style: TextStyle(
                fontFamily: 'logo',
                fontSize: 15,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w300,
                height: 2,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
            ),
          ),
          //
          Pinned.fromPins(
            Pin(size: 100.0, start: 38.0),
            Pin(size: 55.0, middle: 0.8400),
            child: Text(
              '1',
              style: TextStyle(
                fontFamily: 'logo',
                fontSize: 40,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w900,
                height: 0.75,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 100.0, start: 38.0),
            Pin(size: 55.0, middle: 0.9400),
            child: Text(
              '2',
              style: TextStyle(
                fontFamily: 'logo',
                fontSize: 40,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w900,
                height: 0.75,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              softWrap: false,
            ),
          ),
        ],
      ),
    );
  }
}
