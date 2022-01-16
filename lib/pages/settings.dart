import 'package:flutter/material.dart';
import 'package:sd_app/pages/bottomnavigation.dart';
import 'package:auto_size_text/auto_size_text.dart';



class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);


  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  @override
  Widget build(BuildContext context){
    var width = MediaQuery.of(context).size.width;
    var height  = MediaQuery.of(context).size.height;
    bool EmailNotification = false;

    return Scaffold(
      backgroundColor: const Color(0xFF181B2A), //0xFF181B2A
      appBar: AppBar(
        title: const Text("Settings"),
        backgroundColor: const Color(0xFF135CEE),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: AutoSizeText("Anonymousdfghjnmnjhbgfdsdcfgvhbnbhgvfcdcgv", style: TextStyle(fontSize: 60, color: Color(0xFFFFFFFF), fontWeight: FontWeight.bold),maxLines: 1),
            ),
            const SizedBox(
              height: 100,
            ),
            Card(
              margin: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular((15))),
              color: Color(0xFFED648C),
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: const Text("Change Password", style: TextStyle(fontWeight: FontWeight.bold),),
                    leading: const Icon(Icons.lock_outline, color: Color(0xFF200863),),
                    trailing: const Icon(Icons.keyboard_arrow_right),
                    onTap: () => {},
                  ),

                  Container(
                    width: double.infinity,
                    height: 3,
                    color: Color(0xFF181B2A),
                  ),

                  ListTile(
                    title: const Text("Change Email", style: TextStyle(fontWeight: FontWeight.bold)),
                    leading: const Icon(Icons.mail_outline, color: Color(0xFF200863),),
                    trailing: const Icon(Icons.keyboard_arrow_right),
                    onTap: () => {},
                  ),
                  Container(
                    width: double.infinity,
                    height: 3,
                    color: Color(0xFF181B2A),
                  ),
                  ListTile(
                    title: const Text("Logout", style: TextStyle(fontWeight: FontWeight.bold)),
                    leading: const Icon(Icons.logout_outlined, color: Color(0xFF200863),),
                    trailing: const Icon(Icons.keyboard_arrow_right),
                    onTap: () => {},

                  ),
                  Container(
                    width: double.infinity,
                    height: 3,
                    color: Color(0xFF181B2A),
                  ),
                  SwitchListTile(
                    title: const Text("Email Notification", style: TextStyle(fontWeight: FontWeight.bold)),
                    value: EmailNotification,
                    onChanged: (bool val) => {
                      setState(() => EmailNotification = val),
                    },
                    activeColor: const Color(0xFF181B2A),


                  ),
                ],
              )
            )
          ],
        ),
      ),
      bottomNavigationBar: bottomnavigationBar(),
    );



  }

}
