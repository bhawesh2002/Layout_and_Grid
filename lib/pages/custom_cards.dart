import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CUSTOM CARD"),
      ),
      body: Center(
        child: Card(
            shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1),
                borderRadius: BorderRadius.circular(20)),
            elevation: 20,
            color: Colors.grey.shade100,
            child: InkWell(
              splashColor: Colors.blue.shade200,
              borderRadius: BorderRadius.circular(20),
              onTap: () {},
              onLongPress: () {
                const snackBar = SnackBar(
                  content: Text("Hi Spidy"),
                  backgroundColor: Colors.blue,
                  duration: Duration(seconds: 1),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: SizedBox(
                height: 270,
                width: 350,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/spider_mans.png"),
                            radius: 30,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Miles Morales",
                              style: TextStyle(fontSize: 20),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                "This is my Card",
                                style: TextStyle(color: Colors.grey.shade600),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 80,
                      child: Image.asset("assets/SpiderManText.png"),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 5)),
                    Row(
                      children: const [
                        Padding(padding: EdgeInsets.only(left: 10)),
                        Expanded(
                            child: Text(
                          "Marvel's Spider-Man is a action-adventure game developed by Insomniac Games and published by Sony Interactive Entertainment",
                        )),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                              onPressed: () {},
                              child: const Text("Know More")),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
