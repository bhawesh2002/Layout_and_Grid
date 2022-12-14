import 'package:flutter/material.dart';

class ContactDetails extends StatefulWidget {
  const ContactDetails({super.key});

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  // ignore: unused_field
  int _popListIndex = 0;
  final List<Text> _popupTextList = [
    const Text("Remove"),
    const Text("Add"),
    const Text("Delete")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back)),
            title: const Text("MILES MORALES"),
            expandedHeight: 200,
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
              PopupMenuButton(onSelected: (value) {
                setState(() {
                  _popListIndex = value;
                });
              }, itemBuilder: (context) {
                return List.generate(
                    _popupTextList.length,
                    (index) => PopupMenuItem(
                          value: index,
                          child: _popupTextList[index],
                        ));
              })
            ],
            flexibleSpace: const Image(
              image: AssetImage("assets/SpidyBack.png"),
              fit: BoxFit.fill,
              height: 270,
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.phone),
              iconColor: Colors.blue,
              title: const Text(
                "9096521406",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: const Text("Mobile"),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.message_outlined)),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.work),
              iconColor: Colors.blue,
              title: const Text(
                "9689832375",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: const Text("Work"),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.message_outlined)),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.home),
              iconColor: Colors.blue,
              title: const Text(
                "7755976618",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: const Text("Home"),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.message_outlined)),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.mail),
              iconColor: Colors.blue,
              title: const Text(
                "milesmorales@spidy.com",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: const Text("Email"),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.attach_email_outlined)),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.location_city_outlined),
              iconColor: Colors.blue,
              title: const Text(
                "Hells Kitchen,NYC",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: const Text("Address"),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.gps_fixed_outlined)),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.work_outline),
              iconColor: Colors.blue,
              title: const Text(
                "Avengers Tower",
                style: TextStyle(color: Colors.black),
              ),
              subtitle: const Text("Work_Address"),
              trailing: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.gps_fixed_outlined)),
            ),
          ]))
        ],
      ),
    );
  }
}

List<ListTile> myListTile = [
  ListTile(
    onTap: () {},
    leading: const Icon(Icons.phone),
    iconColor: Colors.blue,
    title: const Text(
      "9096521406",
      style: TextStyle(color: Colors.black),
    ),
    subtitle: const Text("Mobile"),
    trailing:
        IconButton(onPressed: () {}, icon: const Icon(Icons.message_outlined)),
  ),
  ListTile(
    onTap: () {},
    leading: const Icon(Icons.work),
    iconColor: Colors.blue,
    title: const Text(
      "9689832375",
      style: TextStyle(color: Colors.black),
    ),
    subtitle: const Text("Work"),
    trailing:
        IconButton(onPressed: () {}, icon: const Icon(Icons.message_outlined)),
  ),
  ListTile(
    onTap: () {},
    leading: const Icon(Icons.home),
    iconColor: Colors.blue,
    title: const Text(
      "7755976618",
      style: TextStyle(color: Colors.black),
    ),
    subtitle: const Text("Home"),
    trailing:
        IconButton(onPressed: () {}, icon: const Icon(Icons.message_outlined)),
  ),
  ListTile(
    onTap: () {},
    leading: const Icon(Icons.mail),
    iconColor: Colors.blue,
    title: const Text(
      "milesmorales@spidy.com",
      style: TextStyle(color: Colors.black),
    ),
    subtitle: const Text("Email"),
    trailing: IconButton(
        onPressed: () {}, icon: const Icon(Icons.attach_email_outlined)),
  ),
  ListTile(
    onTap: () {},
    leading: const Icon(Icons.location_city_outlined),
    iconColor: Colors.blue,
    title: const Text(
      "Hells Kitchen,NYC",
      style: TextStyle(color: Colors.black),
    ),
    subtitle: const Text("Address"),
    trailing: IconButton(
        onPressed: () {}, icon: const Icon(Icons.gps_fixed_outlined)),
  ),
  ListTile(
    onTap: () {},
    leading: const Icon(Icons.work_outline),
    iconColor: Colors.blue,
    title: const Text(
      "Avengers Tower",
      style: TextStyle(color: Colors.black),
    ),
    subtitle: const Text("Work_Address"),
    trailing: IconButton(
        onPressed: () {}, icon: const Icon(Icons.gps_fixed_outlined)),
  ),
];
