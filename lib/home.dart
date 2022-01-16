import 'package:flutter/material.dart';
import 'package:sd_app/pages/bottomnavigation.dart';
import 'package:sd_app/pages/cards.dart';
import 'package:sd_app/pages/settings.dart';



class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height  = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFF181B2A), //0xFF181B2A
      appBar: AppBar(
        title: const Text("Welcome Back"),
        backgroundColor: const Color(0xFF135CEE),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            width: width,
            height: height,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: height*0.02,
                ),
                new card(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const bottomnavigationBar() // bottomNavigationBar custom...
    );
  }
}




