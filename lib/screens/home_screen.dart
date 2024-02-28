import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromRGBO(49, 187, 200, 1),
          Color.fromRGBO(43, 112, 177, 1),
        ],
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
              text: const TextSpan(
            children: [
              TextSpan(
                text: 'Mangue ',
                style: TextStyle(
                  fontSize: 60,
                  color: Colors.blue,
                  fontFamily: 'YourCustomFontForMangue',
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: 'WEB',
                style: TextStyle(
                  fontSize: 60,
                  color: Colors.red,
                  fontFamily: 'YourCustomFontForWEB',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )),
          Container(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                width: 200,
                height: 150,
              ),
              Container(
                width: 50,
              ),
              Container(
                color: Colors.red,
                width: 200,
                height: 150,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
