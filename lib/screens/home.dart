import 'package:first_flutter/widgets/AppDrawer.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('E-Kart')),
      drawer: AppDrawer(),
      body: Center(
        child: Container(
          child: Text(
            'Home',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
