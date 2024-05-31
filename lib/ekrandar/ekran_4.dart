import 'package:flutter/material.dart';

class Ekran4 extends StatefulWidget {
  const Ekran4({Key? key}) : super(key: key);

  @override
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
        backgroundColor: Color.fromARGB(255, 138, 140, 181),
        title: const Text('Себет'),
        centerTitle: true,
      ),
      drawer: const Drawer(),
    );
  }
}
