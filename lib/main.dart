import 'package:flutter/material.dart';
import 'package:type_text/type_text.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:ui';

void main() {
  runApp(const MyApp());
}
int i=0;
List<String> Story = [
  "Story Telling App\n\nPowered by:\n- type_text 1.0.5\n- audioplayers 5.2.1",
  "Features Used:\n\n- Typewriting text animation\n- Animation Duration\n- Play sound from Asset\n- set volume",
  "The dark is friendly.",
  "It hugs me in the night time\nwhen its time to go to\nsleep.",
  "When I close my eyes, it\ntucks in close, like blankets,\nso that I can see my dreams\nbetter.",
  "When it is a hot sunny day,\nthe friendly dark gives\nme a cool spot of shade.",
  "When I dive beneath the\nwaves, it shows me where\nthe clouds are.",
  "It helps me hide when I\nplay hide and seek.",
  "And it follows me, as my\nshadow, to make sure I am\nnever lonely.",
  "At night time, the friendly\ndark makes the moon and\nthe stars look so pretty.",
  "And in the silence of dark,\nI am able to find a safe\nplace to fall asleep.",
  "The friendly dark is filled\nwith lots of things I can't\nsee. But they are the same\nnice things I can see in the day.\nToys and books and pillows,\nand trees and houses and\nsky. Only now we have a game\nto play...",
  "They are shapes, and\nI have to guess what\nthey are!",
  "Many animals know the\ndark is friendly. Owls,\ncats and mice slip out when\nthe dark softly falls, because\nthey know that jumping in\nthe dark is fun!",
  "The Friendly dark is\na cozy place, when the\nworld can seem too noisy\nand bright.",
  "It comes and calms me,\nand makes me notice the\nfriendly dark inside of me,\nwhere everything is quiet,\nand where my centre is.",
  "When the friendly dark\nmakes it hard to see,\nit gives us the gift of hearing\nand smelling better, turning\nus just like a superhero.",
  "The friendly dark is good\nfor curling up in, and talking\nto loved ones in.",
  "Without the friendly dark,\nwe would not have shadow\npuppets, and fairy lights,\nand glow-worms.\n\nGlow worms are just\nordinary worms, without\nthe friendly dark.",
  "Most of all, the friendly\ndark cuddles us all night\nlong, until we are ready\nfor morning.",
  "And in the morning, when\nthe sun comes up, the friendly\ndark dances with the\ntree branches,until we're\nready to play again.",
  " "
];

int Page(){
  if (i<=20){
    return i++;
  }
  else{
    return i=0;
  }
}
final player = AudioPlayer();
Future<void> playSound(int A) async {
  try {
    await player.play(AssetSource('Vc$i.wav'));

  } catch (e) {
    print('Error playing sound: $e');
  }
}
String A="Start";
String ButtonText(){
  if (i==0){
    A="Start";
  }
  else if (i==21){
    A="Restart";
  }
  else{
    A="Next Page";
  }
  return A;
}

List<int> d=[3,3,3,5,9,7,4,4,5,6,7,18,4,12,6,9,9,5,13,7,9,0];
TypeText Write(){
  return TypeText(
    Story.elementAt(i),
    duration: Duration(seconds: d.elementAt(i)),
    style: const TextStyle(
        fontSize: 25.0,
        fontFamily: 'LTCushion',
        fontWeight: FontWeight.w500,
    ),
    onType: (progress) {
    },
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 247,229,219),
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  color: Color.fromARGB(255, 247,229,219),
                  child: Image(
                    image: AssetImage('Image/Page$i.png'),
                    height: 400,
                    width: 400,
                  ),
                ),
                Container(
                  height: 270,
                  color: Color.fromARGB(255, 247,229,219),
                    child: Column(
                      children: [
                        Container(
                          height:40,
                            color: Color.fromARGB(255, 247,229,219),
                        ),
                        Write(),
                      ]
                    )

                ),
                ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      enableFeedback: false,
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,

                            )
                        )
                    ),
                    onPressed: () async {
                      setState(() {
                        Page();
                        Write();
                        ButtonText();
                        print(i);
                      });
                      await playSound(i);
                      await player.setVolume(1);
                    },
                    child: Text(
                        A.toUpperCase(),
                        style: TextStyle(
                            fontSize: 14
                        )
                    )

                )


                ],
            )
        ),
      ),
    );
  }
}
