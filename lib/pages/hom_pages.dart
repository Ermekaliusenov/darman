import 'dart:async';

import 'package:darman/pages/home.dart';
import 'package:flutter/material.dart';

class HomPages extends StatefulWidget {
  const HomPages({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomPagesState createState() => _HomPagesState();
}

class _HomPagesState extends State<HomPages> {
  late Future future;
  @override
  void initState() {
    super.initState();
    future = function();
  }

  Future function() async {
    await Future.delayed(
      const Duration(seconds: 4),
    );
    return Navigator.push(
        // ignore: use_build_context_synchronously
        context, MaterialPageRoute(builder: (context) => const Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
        child: Stack(
          children: [
            Image.asset('assets/emb/darman.png'),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(left: 142, top: 5),
              child: const Text(
                'Сиздин капчык даарыкананыз',
                style: TextStyle(
                  color: Color(0xffea3118),
                  height: 33.5,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 300),
              child: Image.asset('assets/emb/tabletki.png'),
            ),
          ],
        ),
      ),
    );
  }
}
