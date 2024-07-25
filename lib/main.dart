import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}
class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});
  void playsound(int num)async{
      final player = AudioPlayer();
      await player.play(AssetSource('note$num.wav'));
  }
   Expanded buildkey({required Color color,required int num}){
    return Expanded(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: color,
          ) ,
          onPressed: (){
            playsound(num);
          }, child:const Text(""),
        ),
      );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:<Widget>[
                // Expanded(
                //   child: TextButton(
                //     style: TextButton.styleFrom(
                //       backgroundColor: Colors.red,
                //     ) ,
                //     onPressed: (){
                //       playsound(1);
                //     }, child:Text("Sa",style: TextStyle(color: Colors.red),),
                //                 ),
                // ),
                // Expanded(
                //   child: TextButton(
                //     style: TextButton.styleFrom(
                //       backgroundColor: Colors.green,
                //     ),
                //     onPressed: (){
                //       playsound(2);
                //     },
                //     child:Text("re",style: TextStyle(color: Colors.green),),
                //   ),
                // ),
                // Expanded(
                //   child: TextButton(
                //     style: TextButton.styleFrom(
                //       backgroundColor: Colors.blue,
                //     ),
                //     onPressed: (){
                //       playsound(3);
                //     }, child:Text("ga",style: TextStyle(color: Colors.blue),),
                //   ),
                // ),
                // Expanded(
                //   child: TextButton(
                //     style: TextButton.styleFrom(
                //       backgroundColor: Colors.pink,
                //     ),
                //     onPressed: (){
                //       playsound(4);
                //     }, child:Text("ma",style: TextStyle(color: Colors.pink),),
                //   ),
                // ),
                // Expanded(
                //   child: TextButton(
                //     style: TextButton.styleFrom(
                //       backgroundColor: Colors.yellow,
                //     ),
                //     onPressed: (){
                //       playsound(5);
                //     }, child:Text("pa",style: TextStyle(color: Colors.yellow),),
                //   ),
                // ),
                // Expanded(
                //   child: TextButton(
                //     style: TextButton.styleFrom(
                //       backgroundColor: Colors.purple,
                //     ),
                //     onPressed: (){
                //       playsound(6);
                //     }, child:Text("dha",style: TextStyle(color: Colors.purple),),
                //   ),
                // ),
                // Expanded(
                //   child: TextButton(
                //     style: TextButton.styleFrom(
                //       backgroundColor: Colors.cyan,
                //     ),
                //     onPressed: (){
                //       playsound(7);
                //     }, child:Text("ni",style: TextStyle(color: Colors.cyan),),
                //   ),
                // ),
                buildkey(color: Colors.red,num: 1),
                buildkey(color: Colors.green,num: 2),
                buildkey(color: Colors.blue,num: 3),
                buildkey(color: Colors.pink,num: 4),
                buildkey(color: Colors.yellow,num: 5),
                buildkey(color: Colors.purple,num: 6),
                buildkey(color: Colors.cyan, num: 7),
              ]
            )
        ),
      ),
    );
  }
}


