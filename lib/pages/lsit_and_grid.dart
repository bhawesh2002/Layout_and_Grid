import 'package:flutter/material.dart';

import '../custom widgest/custom_drawer.dart';

class ListAndGrid extends StatefulWidget {
  const ListAndGrid({super.key});
  @override
  State<ListAndGrid> createState() => _ListAndGridState();
}

class _ListAndGridState extends State<ListAndGrid> {
  int _popIndex = 0;
  final List<Text> _popTextList = [
    const Text("ONE"),
    const Text("TWO"),
    const Text("THREE"),
    const Text("FOUR"),
  ];
  int _bottomnavBarIndex = 0;
  final List<BottomNavigationBarItem> _bottomNavBArItems = [
    const BottomNavigationBarItem(label: "ADD", icon: Icon(Icons.add)),
    const BottomNavigationBarItem(label: "SQUARE", icon: Icon(Icons.square)),
    const BottomNavigationBarItem(label: "REMOVE", icon: Icon(Icons.remove)),
  ];
  int _gridBoxCount = 1;
  int _colorIndex = 0;
  final List<Color> _myColors = [
    Colors.amber,
    Colors.blue,
    Colors.brown,
    Colors.cyan,
    Colors.green,
    Colors.indigo,
    Colors.lime,
    Colors.pink,
    Colors.orange,
    Colors.purple,
    Colors.red,
    Colors.teal,
    Colors.yellow,
  ];

  double _roundedRadius = 15;
  bool _isSquare = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LIST AND GRID"),
        actions: [
          PopupMenuButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              onSelected: (value) {
                setState(() {
                  _popIndex = value;
                });
              },
              itemBuilder: (context) {
                return List.generate(
                    _popTextList.length,
                    (index) => PopupMenuItem(
                        value: index, child: _popTextList[index]));
              })
        ],
      ),
      drawer: const MyDrawer(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_roundedRadius),
                        color: _myColors[0],
                      ),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              _colorIndex = 0;
                            });
                          },
                          child: const Text(
                            "AMBER",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_roundedRadius),
                        color: _myColors[1],
                      ),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              _colorIndex = 1;
                            });
                          },
                          child: const Text(
                            "BLUE",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_roundedRadius),
                        color: _myColors[2],
                      ),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              _colorIndex = 2;
                            });
                          },
                          child: const Text(
                            "BROWN",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_roundedRadius),
                        color: _myColors[3],
                      ),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              _colorIndex = 3;
                            });
                          },
                          child: const Text(
                            "CYAN",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_roundedRadius),
                        color: _myColors[4],
                      ),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              _colorIndex = 4;
                            });
                          },
                          child: const Text(
                            "GREEN",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_roundedRadius),
                        color: _myColors[5],
                      ),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              _colorIndex = 5;
                            });
                          },
                          child: const Text(
                            "INDIGO",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_roundedRadius),
                        color: _myColors[6],
                      ),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              _colorIndex = 6;
                            });
                          },
                          child: const Text(
                            "LIME",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_roundedRadius),
                        color: _myColors[7],
                      ),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              _colorIndex = 7;
                            });
                          },
                          child: const Text(
                            "PINK",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_roundedRadius),
                        color: _myColors[8],
                      ),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              _colorIndex = 8;
                            });
                          },
                          child: const Text(
                            "ORANGE",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_roundedRadius),
                        color: _myColors[9],
                      ),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              _colorIndex = 9;
                            });
                          },
                          child: const Text(
                            "PURPLE",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_roundedRadius),
                        color: _myColors[10],
                      ),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              _colorIndex = 10;
                            });
                          },
                          child: const Text(
                            "RED",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_roundedRadius),
                        color: _myColors[11],
                      ),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              _colorIndex = 11;
                            });
                          },
                          child: const Text(
                            "TEAL",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_roundedRadius),
                        color: _myColors[12],
                      ),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              _colorIndex = 12;
                            });
                          },
                          child: const Text(
                            "YELLOW",
                            style: TextStyle(color: Colors.black),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_roundedRadius),
                        color: _myColors[0],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_roundedRadius),
                        color: _myColors[1],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_roundedRadius),
                        color: _myColors[2],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_roundedRadius),
                        color: _myColors[3],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_roundedRadius),
                        color: _myColors[4],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_roundedRadius),
                        color: _myColors[5],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_roundedRadius),
                        color: _myColors[6],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_roundedRadius),
                        color: _myColors[7],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_roundedRadius),
                        color: _myColors[8],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_roundedRadius),
                        color: _myColors[9],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_roundedRadius),
                        color: _myColors[10],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_roundedRadius),
                        color: _myColors[11],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_roundedRadius),
                        color: _myColors[12],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: GridView.count(
                scrollDirection: Axis.horizontal,
                crossAxisCount: _popIndex + 1,
                children: List.generate(
                  _gridBoxCount,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_roundedRadius),
                        color: _myColors[_colorIndex],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          currentIndex: _bottomnavBarIndex,
          onTap: (value) {
            setState(() {
              _bottomnavBarIndex = value;

              if (value == 1) {
                if (_isSquare == false) {
                  _isSquare = true;
                  _roundedRadius = 0;
                } else {
                  _isSquare = false;
                  _roundedRadius = 15;
                }
              }
              if (value == 0) {
                _gridBoxCount++;
              }
              if (value == 2 && _gridBoxCount >= 2) {
                _gridBoxCount--;
              }
            });
          },
          items: List.generate(_bottomNavBArItems.length, (index) {
            return _bottomNavBArItems[index];
          }).toList()),
    );
  }
}
