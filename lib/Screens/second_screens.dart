import 'package:flutter/material.dart';

class SecondScreens extends StatelessWidget {
  const SecondScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screens'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                  'assets/img/img.jpg',
                width: 300,
                height: 300,
              ),
              Text(
                '집가구밍',
                style: TextStyle(
                  fontFamily: 'Regular',
                  fontSize: 50
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}
