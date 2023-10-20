import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 254, 244, 211),
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('images/pfp.png'),
                  backgroundColor: Colors.black,
                  radius: 50.0,
                ),
                Container(
                    height: 20
                ),
                const Text(
                  'Carl Louise Rostata',
                  style: TextStyle(
                      fontFamily: 'LTCushion',
                      fontSize: 25.0,
                      fontWeight: FontWeight.w800,
                      color: Color.fromARGB(255, 97, 54, 21)
                  ),
                ),
                const Text(
                  'Computer Engineering',
                  style: TextStyle(
                      fontFamily: 'LTCushion',
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 97, 54, 21)
                  ),
                ),
                const SizedBox(
                  width: 120,
                  child: Divider(
                    thickness: 1.0,
                    color: Color.fromARGB(255, 97, 54, 21),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.all(5),
                    width: 250,
                    height: 35,
                    decoration: BoxDecoration(
                        border: Border.all(width: 3, color:Color.fromARGB(255, 97, 54, 21) ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color:   Color.fromARGB(255, 254, 244, 211)
                    ),
                    child: const Row(
                        children: [
                          SizedBox(width: 10),
                          Icon(Icons.phone),
                          SizedBox(width: 40),
                          Text('09704896083')
                        ]
                    )

                ),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 1),
                    padding: const EdgeInsets.all(5),
                    width: 250,
                    height: 35,
                    decoration: BoxDecoration(
                        border: Border.all(width: 3, color:Color.fromARGB(255, 97, 54, 21) ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color:   Color.fromARGB(255, 254, 244, 211)
                    ),
                    child: const Row(
                        children: [
                          SizedBox(width: 10),
                          Icon(Icons.email),
                          SizedBox(width: 20),
                          Text('RCD0891@dlsd.edu.ph')
                        ]
                    )

                ),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.all(5),
                    width: 250,
                    height: 35,
                    decoration: BoxDecoration(
                        border: Border.all(width: 3, color:Color.fromARGB(255, 97, 54, 21) ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color:   Color.fromARGB(255, 254, 244, 211)
                    ),
                    child: const Row(
                        children: [
                          SizedBox(width: 10),
                          Icon(Icons.person),
                          SizedBox(width: 65),
                          Text('CPE32')
                        ]
                    )

                ),

              ],
            )
        ),
      ),
    );
  }
}
