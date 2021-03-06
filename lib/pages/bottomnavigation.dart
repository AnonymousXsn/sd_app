import 'package:flutter/material.dart';
import 'package:sd_app/pages/leaderboard.dart';
import 'package:sd_app/home.dart';
import 'package:sd_app/pages/settings.dart';

class bottomnavigationBar extends StatelessWidget {
  const bottomnavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: 100,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LeaderBoardPage()),
                  (Route<dynamic> route) => false,
                );
              },
              icon: const Icon(Icons.leaderboard_rounded,
                  color: Colors.white, size: 30)),
          SizedBox(
            width: width * 0.2,
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xFFED648C)),
            child: IconButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()),
                    (Route<dynamic> route) => false,
                  );
                },
                icon: const Icon(Icons.home_rounded,
                    color: Colors.white, size: 30)),
          ),
          SizedBox(
            width: width * 0.2,
          ),
          IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                  (Route<dynamic> route) => false,
                );
              },
              icon: const Icon(Icons.settings_rounded,
                  color: Colors.white, size: 30)),
        ],
      ),
    );
  }
}
