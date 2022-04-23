import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  void sound(int n){
    final Player = AudioCache();
    Player.play('note$n.wav');
  }

  Expanded button({required Color color,required int n}){
    return Expanded(
      child: GestureDetector(
        onTap: (){
         sound(n);
        },
        child: Container(
          color: color,
          child: const Center(
            child: Text(
              'Click Here',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                button(color: Colors.red, n: 1),
                button(color: Colors.orange, n: 2),
                button(color: Colors.yellow, n: 3),
                button(color: Colors.green,n: 4),
                button(color: Colors.greenAccent, n: 5),
                button(color: Colors.blue, n: 6),
                button(color: Colors.purple,n: 7),
              ],
            ),


          ),
        ),

      ),
    );
  }
}
