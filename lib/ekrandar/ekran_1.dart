import 'dart:io';

import 'package:flutter/material.dart';

class Ekran1 extends StatefulWidget {
  const Ekran1({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Ekran1State createState() => _Ekran1State();
}

class _Ekran1State extends State<Ekran1> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Handle the navigation or any other action based on the selected index
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          // ignore: avoid_unnecessary_containers
          SizedBox(
            height: 100,
            width: 120,
            child: InkWell(
              child: Image.asset(
                'assets/emb/logo.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
        backgroundColor: const Color(0xffbee356),
        title: const Text('Башкы бет'),
        centerTitle: true,
      ),
      drawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: const Color(0xffefb4b4),
              ),
              // ignore: sort_child_properties_last
              child: Padding(
                padding: const EdgeInsets.only(left: 330),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      size: 40,
                    )),
              ),
              width: double.infinity,
              height: 50,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xffefb4b4)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/emb/bolezn.png'),
                        ),
                        const Text(
                          'Оорулар',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 60,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xffefb4b4)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/emb/tab.png'),
                        ),
                        const Text(
                          'Даарылар',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const Text(
              'Арзан жеткиликтуу даарылар',
              style: TextStyle(
                  color: Color(
                    0xffea3118,
                  ),
                  fontSize: 17,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 450,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 10, // Total number of items
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      height: 136,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: const Color(0xffefb4b4),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/emb/foto1.png'),
                          const Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                child: Text(
                                  'Баш орууга',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ),
                              Text('каршы даары',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                  )),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 9, 70, 0),
                                child: Text(
                                  '-20%',
                                  style: TextStyle(
                                      color: Color(0xffbee360), fontSize: 15),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 10, 32, 0),
                                child: Text('Баасы:',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xffea3118),
                                      fontSize: 20,
                                    )),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Column(
                              children: [
                                Image.asset('assets/emb/neman.png'),
                                const Text(
                                  'Неман Фарм',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Icon(
                              Platform.isAndroid
                                  ? Icons.favorite_border
                                  : Icons.abc,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
              size: 30,
            ),
            label: 'Уй',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
            label: 'Издоо',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.black,
              size: 30,
            ),
            label: 'Сактоолор',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 30,
            ),
            label: 'Себет',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xffefb4b4),
        onTap: _onItemTapped,
      ),
    );
  }
}
