import 'dart:io';


import 'package:flutter/material.dart';
import 'package:darman/modelder/1model.dart';

class Ekran1 extends StatefulWidget {
  const Ekran1({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Ekran1State createState() => _Ekran1State();
}

class _Ekran1State extends State<Ekran1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
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
        backgroundColor: const Color.fromARGB(255, 138, 140, 181),
        title: const Text('Башкы бет'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 138, 140, 181),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image.asset(
                  //   'assets/emb/logo.png',
                  //   height: 80,
                  //   width: 210,
                  //   fit: BoxFit.cover,
                  // ),
                  SizedBox(height: 95),
                  Text(
                    'Меню',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Башкы бет'),
              onTap: () {
                // Navigate to home
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.local_hospital),
              title: const Text('Оорулар'),
              onTap: () {
                // Navigate to Oorular page
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.medical_services),
              title: const Text('Даарылар'),
              onTap: () {
                // Navigate to Darylar page
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Ондоо'),
              onTap: () {
                // Navigate to Settings page
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SearchBar(
              leading:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
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
                      color: const Color.fromARGB(255, 205, 183, 198),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/emb/bolezn.png'),
                        ),
                        const Text(
                          'Оорулар',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 60),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color.fromARGB(255, 205, 183, 198),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/emb/tab.png'),
                        ),
                        const Text(
                          'Даарылар',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Text(
              'Арзан жеткиликтуу даарылар',
              style: TextStyle(
                color: Color.fromARGB(255, 148, 107, 102),
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
            Expanded(
              child: Stack(children: [
                SizedBox(
                  height: 450,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: continents.length, // Total number of items
                    itemBuilder: (context, index) {
                      final item = continents[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 100,
                          height: 134,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color.fromARGB(255, 205, 183, 198),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/emb/${item.image}.png'),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 20, 0),
                                    child: Text(
                                      item.text,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  const Text(
                                    'каршы даары',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 9, 70, 0),
                                    child: Text(
                                      item.procend,
                                      style: const TextStyle(
                                        color: Color(0xffbee360),
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.fromLTRB(0, 10, 32, 0),
                                    child: Text(
                                      'Баасы:',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xffea3118),
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: Column(
                                  children: [
                                    Image.asset(
                                        'assets/emb/${item.emblemb}.png'),
                                    const Text(
                                      'Неман Фарм',
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    const Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          0, 0, 20, 0),
                                      child: Text(
                                        '315 сом',
                                        style: TextStyle(
                                            color: Color(0xffea3118),
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: InkWell(
                                  onTap: () {},
                                  child: Icon(
                                    Platform.isAndroid
                                        ? Icons.favorite_border
                                        : Icons.abc,
                                    size: 40,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
