import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sd_app/pages/bottomnavigation.dart';

class LeaderBoardPage extends StatefulWidget {
  const LeaderBoardPage({Key? key}) : super(key: key);

  @override
  State<LeaderBoardPage> createState() => _LeaderBoardPageState();
}

class _LeaderBoardPageState extends State<LeaderBoardPage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: const Color(0xFF181B2A), //0xFF181B2A
        appBar: AppBar(
          title: const Text("Leaderboard", style: TextStyle(fontSize: 25)),
          backgroundColor: const Color(0xFF181B2A),
          centerTitle: true,
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
                    height: height * 0.04,
                  ),
                  const Lister(
                    name: "User 1",
                    points: "100000",
                  ),
                  const Lister(name: "User 2", points: "100000"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: const bottomnavigationBar());
  }
}

class Lister extends StatelessWidget {
  final String name;
  final String points;

  const Lister({
    required this.name,
    required this.points,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 37.0,
        margin: const EdgeInsets.only(bottom: 10.0),
        padding: const EdgeInsets.only(left: 10.0),
        decoration: const BoxDecoration(
          color: Colors.pinkAccent,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
              bottomLeft: Radius.circular(30.0)),
          boxShadow: [
            BoxShadow(color: Colors.grey, blurRadius: 10.0),
          ],
        ),
        child: Row(
          children: <Widget>[
            const SizedBox(
              width: 10.0,
            ),
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              spacing: 200,
              children: <Widget>[
                AutoSizeText(
                  name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                AutoSizeText(
                  points,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ],
            ),
          ],
        ));
  }
}
