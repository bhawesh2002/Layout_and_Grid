// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ui_ux/main.dart';
import 'package:ui_ux/pages/contact_details.dart';
import 'package:ui_ux/pages/custom_cards.dart';
import 'package:ui_ux/pages/custom_gesture.dart';
import 'package:ui_ux/pages/lsit_and_grid.dart';
import 'package:ui_ux/pages/settings.dart';
import 'package:ui_ux/pages/sliver_page.dart';
import 'package:ui_ux/pages/user_details.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(
            child: ListView(
              shrinkWrap: true,
              children: [
                DrawerHeader(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/SpidyBack.png"),
                            opacity: 45)),
                    child: SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      fullscreenDialog: true,
                                      builder: (context) =>
                                          const UserDetails()));
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Hero(
                                tag: "Spidy",
                                child: CircleAvatar(
                                  radius: 55,
                                  backgroundImage:
                                      AssetImage("assets/spider_mans.png"),
                                ),
                              ),
                            ),
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 12),
                                  child: Text(
                                    "SPIDERMAN:\nMiles Morales",
                                    style: TextStyle(
                                        fontSize: 17, color: Colors.white),
                                  ),
                                ),
                              ]),
                        ],
                      ),
                    )),
                const MyListTile(
                  myColor: Colors.blue,
                  myIcon: Icons.home,
                  myText: "HOME",
                  myPage: MyHomePage(),
                ),
                const MyListTile(
                  myColor: Colors.pink,
                  myIcon: Icons.grid_on,
                  myText: "LIST AND GRID",
                  myPage: ListAndGrid(),
                ),
                const MyListTile(
                  myColor: Colors.amber,
                  myIcon: Icons.camera_rounded,
                  myText: "CUSTOM CARD",
                  myPage: CustomCard(),
                ),
                const MyListTile(
                  myColor: Colors.purple,
                  myIcon: Icons.contact_page_outlined,
                  myText: "CONTACT DETAILS",
                  myPage: ContactDetails(),
                ),
                const MyListTile(
                  myColor: Colors.orange,
                  myIcon: Icons.cut,
                  myText: "CUSTOM SLIVER",
                  myPage: CustomSliver(),
                ),
                const MyListTile(
                    myColor: Colors.green,
                    myIcon: Icons.gesture,
                    myText: "GESTURE PAGE",
                    myPage: GesturePage()),
                const MyListTile(
                  myColor: Colors.red,
                  myIcon: Icons.settings,
                  myText: "SETTINGS",
                  myPage: SettingPage(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyListTile extends StatelessWidget {
  const MyListTile(
      {super.key,
      required this.myColor,
      required this.myIcon,
      required this.myText,
      required this.myPage});
  final Color myColor;
  final IconData myIcon;
  final String myText;
  final Widget myPage;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        myIcon,
        color: myColor,
      ),
      title: Text(myText),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => myPage));
      },
    );
  }
}
