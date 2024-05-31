import 'package:flutter/material.dart';

class Ekran3 extends StatefulWidget {
  const Ekran3({ Key? key }) : super(key: key);

  @override
  _Ekran3State createState() => _Ekran3State();
}

class _Ekran3State extends State<Ekran3> {
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
        title: const Text('Маалымат'),
        centerTitle: true,
      ),
      drawer: const Drawer(),
    );
  }
}