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
    var height  = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: const Color(0xFF181B2A), //0xFF181B2A
        appBar: AppBar(
          title: const Text("LeaderBoard"),
          backgroundColor: const Color(0xFF135CEE),
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
                  height: height*0.02,
              ),
                const Lister(name: "User1", points: "1000000"),
                const Lister(name: "User2", points: "1000000"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
              ),
                ],
              ),
            ),
    ),
    ),


    bottomNavigationBar: const bottomnavigationBar()


    );
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
        height: 35.0,
        margin: const EdgeInsets.only(bottom: 10.0),
        padding: const EdgeInsets.only(left: 10.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0)),
          boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10.0
              ),
          ],
        ),
        child: Row(
          children: <Widget>[
            const SizedBox(width: 10.0,),
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              spacing: 200,
              children: <Widget>[
                Text(name, style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                Text(points, style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
              ],
            ),
          ],
        )
    );
  }
}
