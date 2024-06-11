// import 'package:darman/view/.dart';
import 'package:darman/view/profil_view.dart';
import 'package:darman/view/home_view.dart';
import 'package:darman/view/search_view.dart';
import 'package:darman/view/card_view.dart';
// import 'package:darman/view/.dart';
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
        // backgroundColor: const Color.fromARGB(255, 138, 140, 181),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Color.fromARGB(255, 138, 140, 181),
              size: 30,
            ),
            label: 'Башкы бет',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Color.fromARGB(255, 138, 140, 181),
              size: 30,
            ),
            label: 'Издоо',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Color.fromARGB(255, 138, 140, 181),
              size: 30,
            ),
            label: 'Сактоолор',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_outlined,
              color: Color.fromARGB(255, 138, 140, 181),
              size: 30,
            ),
            label: 'Жеке болум',
          ),
        ],
        currentIndex: _selectedIndex,

        selectedItemColor: const Color.fromARGB(255, 138, 140, 181),
        unselectedItemColor: Colors.amber,
        onTap: _onItemTapped,
      ),
    );
  }
}
