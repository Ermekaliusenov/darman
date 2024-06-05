import 'package:darman/ekrandar/ekran_1.dart';
import 'package:darman/ekrandar/ekran_2.dart';
import 'package:darman/ekrandar/ekran_3.dart';
import 'package:darman/ekrandar/ekran_4.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  List search = [
    const Ekran1(),
    const SearchScreen(),
    const Ekran3(),
    const Ekran4()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: search.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
              size: 30,
            ),
            label: 'Башкы бет',
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
        selectedItemColor: Color.fromARGB(255, 236, 20, 20),
        unselectedItemColor: Colors.amber,
        onTap: _onItemTapped,
      ),
    );
  }
}
