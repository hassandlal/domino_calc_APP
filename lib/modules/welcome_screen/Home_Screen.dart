import 'package:domino_calculator/shared/components/components.dart';
import 'package:flutter/material.dart';

import '../players_number/players_number_screen.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scrHeight = MediaQuery.of(context).size.height;
    var scrWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20.0,left: 8,right: 8,bottom: 20),
              child: Text('Hello sir, let\'s start playing',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/1.jpg',
                  height: scrHeight * 0.6,
                  width: scrWidth * 0.9,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            TextButton(onPressed: ()=>navigateTo(context, const PlayersNumberScreen()), child: const Text('start',style: TextStyle(fontSize: 20),))
          ],
        ),
      ),
    );
  }
}
