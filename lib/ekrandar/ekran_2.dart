import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
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
        backgroundColor: Color.fromARGB(255, 138, 140, 181),
        title: const Text('Издоо'),
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
                color: Color.fromARGB(255, 205, 183, 198),
              ),
              width: double.infinity,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 330),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    size: 40,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.home_outlined,
      //         color: Colors.black,
      //         size: 30,
      //       ),
      //       label: 'Уй',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.search,
      //         color: Colors.black,
      //         size: 30,
      //       ),
      //       label: 'Издоо',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.favorite_border,
      //         color: Colors.black,
      //         size: 30,
      //       ),
      //       label: 'Сактоолор',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.shopping_cart_outlined,
      //         color: Colors.black,
      //         size: 30,
      //       ),
      //       label: 'Себет',
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: const Color(0xffefb4b4),
      //   unselectedItemColor: Colors.black,
      //   onTap: _onItemTapped,
      // ),
    );
  }
}
