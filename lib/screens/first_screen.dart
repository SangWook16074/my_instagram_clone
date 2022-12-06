import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_clone/screens/login_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  _navigator(BuildContext context, Widget page) {
    Navigator.of(context).push((Platform.isAndroid)
        ? MaterialPageRoute(builder: (context) {
            return page;
          })
        : CupertinoPageRoute(builder: (context) {
            return page;
          }));
  }

  @override
  Widget build(BuildContext context) {
    final Width = MediaQuery.of(context).size.width - 40;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 60.0),
              child: Text(
                'Instagram',
                style: GoogleFonts.lobster(textStyle: TextStyle(fontSize: 40)),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              width: Width,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('새 계정 만들기'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              width: Width,
              height: 50,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push((Platform.isAndroid)
                      ? MaterialPageRoute(builder: (context) {
                          return LoginScreen();
                        })
                      : CupertinoPageRoute(builder: (context) {
                          return LoginScreen();
                        }));
                },
                child: Text(
                  '로그인',
                  style: TextStyle(color: Colors.blue),
                ),
                style: ButtonStyle(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
