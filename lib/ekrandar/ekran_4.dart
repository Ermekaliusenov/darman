import 'package:flutter/material.dart';

class Ekran4 extends StatefulWidget {
  const Ekran4({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Ekran4State createState() => _Ekran4State();
}

class _Ekran4State extends State<Ekran4> {
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
        title: const Text('Себет'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 138, 140, 181),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/emb/logo.png',
                    height: 80,
                    width: 80,
                  ),
                  const SizedBox(height: 10),
                  const Text(
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
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Оорулар жөнүндө'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.medication),
              title: const Text('Даарылар жөнүндө'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text('Байланыш'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
