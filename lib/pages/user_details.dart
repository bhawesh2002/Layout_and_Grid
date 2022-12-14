import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("USER DETAILS"),
        actions: [
          IconButton(
              onPressed: () {}, splashRadius: 25, icon: const Icon(Icons.edit))
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              child: const Hero(
                tag: "Spidy",
                child: CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage("assets/spider_mans.png"),
                ),
              ),
            ),
            const Align(
              child: Text(
                "SPIDERMAN:\nMiles Morales",
                style: TextStyle(fontSize: 17),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              height: 420,
              child: ListView(
                children: [
                  ListTile(
                    iconColor: Colors.blue,
                    leading: const Icon(Icons.face),
                    title: const Text("Miles Morales"),
                    trailing: IconButton(
                        onPressed: () {},
                        splashRadius: 25,
                        tooltip: "VIEW INFO",
                        icon: const Icon(Icons.arrow_drop_down)),
                  ),
                  ListTile(
                    onTap: () {},
                    iconColor: Colors.blue,
                    leading: const Icon(Icons.security),
                    title: const Text("Security Settings"),
                  ),
                  ListTile(
                    onTap: () {},
                    iconColor: Colors.blue,
                    leading: const Icon(Icons.check_circle),
                    title: const Text("Activity"),
                  ),
                  ListTile(
                    onTap: () {},
                    iconColor: Colors.blue,
                    leading: const Icon(Icons.settings_accessibility),
                    title: const Text("Accessibility"),
                  ),
                  ListTile(
                    onTap: () {},
                    iconColor: Colors.blue,
                    leading: const Icon(Icons.settings_backup_restore),
                    title: const Text("Backup And Restore"),
                  ),
                  ListTile(
                    onTap: () {},
                    iconColor: Colors.blue,
                    leading: const Icon(Icons.info),
                    title: const Text("About"),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
