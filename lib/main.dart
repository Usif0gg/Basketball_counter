import 'package:flutter/material.dart';

void main() {
  runApp(basketball_counter());
}

class basketball_counter extends StatefulWidget {
  const basketball_counter({super.key});

  @override
  State<basketball_counter> createState() => _MyAppState();
}

class _MyAppState extends State<basketball_counter> {
  int team_1_points=0;
  int team_2_points=0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Title(child: Text('Basketball Counter'), color: Colors.red),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team 1',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      '$team_1_points',
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      onPressed: () { setState(() { 
                        team_1_points++;
                      });
                      },
                      child: Text('1 point'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightGreen,
                          minimumSize: Size(100, 40)),
                    ),
                    ElevatedButton(
                      onPressed: () {setState(() { 
                        team_1_points+=2;
                      });},
                      child: Text('2 point'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightGreen,
                          minimumSize: Size(100, 40)),
                    ),
                    ElevatedButton(
                      onPressed: () {setState(() { 
                        team_1_points+=3;
                      });},
                      child: Text('3 point'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightGreen,
                          minimumSize: Size(100, 40)),
                    ),
                  ],
                ),
               const SizedBox(
                  height: 500,
                  child:  VerticalDivider(
                    width: 50,
                    indent: 40,
                    endIndent: 40,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'Team 2',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      '$team_2_points',
                      style: TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      onPressed: () {setState(() { 
                        team_2_points++;
                      });},
                      child: Text('1 point'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightGreen,
                          minimumSize: Size(100, 40)),
                    ),
                    ElevatedButton(
                      onPressed: () {setState(() { 
                        team_2_points+=2;
                      });},
                      child: Text('2 point'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightGreen,
                          minimumSize: Size(100, 40)),
                    ),
                    ElevatedButton(
                      onPressed: () {setState(() { 
                        team_2_points+=3;
                      });},
                      child: Text('3 point'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightGreen,
                          minimumSize: Size(100, 40)),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(
              flex: 20,
            ),
            ElevatedButton(
              onPressed: () {setState(() { 
                        team_1_points=0;
                        team_2_points=0;
                      });},
              child: Text('Reset', style: TextStyle(fontSize: 15 , color: Colors.white),),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, minimumSize: Size(100, 40)),
            ),
            Spacer(flex: 30),
          ],
        ),
      ),
    );
  }
}
