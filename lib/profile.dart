import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';


class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 258.0, end: -75.0),
            Pin(size: 259.0, start: -56.0),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/img10.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 100.0, middle: 0.420),
            Pin(size: 25.0, start: 61.0),
            child: const Text(
              'Profile',
              style: TextStyle(
                fontFamily: 'logo',
                fontSize: 18,
                color: Color(0xff000000),
                fontWeight: FontWeight.w900,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 30.0, start: 30.0),
            Pin(size: 16.0, start: 64.0),
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
          Pinned.fromPins(
            Pin(size: 100.0, middle: 0.1989),
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
          Pinned.fromPins(
            Pin(size: 121.0, start: 30.0),
            Pin(size: 121.0, start: 128.0),
            child: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/profile.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(22.0),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x29000000),
                    offset: Offset(0, 3),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 120.0, start: 30.0),
            Pin(size: 20.0, middle: 0.3500),
            child: const Text(
              'Your Menu',
              style: TextStyle(
                fontFamily: 'logo',
                fontSize: 20,
                color: Color(0xff000000),
                fontWeight: FontWeight.w900,
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 100.0, middle: 0.5149),
            Pin(size: 27.0, start: 148.0),
            child: const Text(
              'Natthawat',
              style: TextStyle(
                fontFamily: 'logo',
                fontSize: 20,
                color: Color(0xff000000),
                fontWeight: FontWeight.w300,
              ),
              softWrap: false,
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 20, top: 240),
              child: Container(
                width: 250,
                child: StreamBuilder(
                  stream:
                  FirebaseFirestore.instance.collection('addFood').snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return ListView(
                      children: snapshot.data!.docs.map((document) {
                        return Container(
                            // color: Colors.,
                              child: ListTile(
                                title: Text(document["textName"]),
                                  subtitle: Text(document["textIngredients"]),
                                onTap: (){
                                  }
                              ),
                        );
                      }).toList(),
                    );
                  },
                ),
              )
          ),
        ],
      ),
    );
  }
}
