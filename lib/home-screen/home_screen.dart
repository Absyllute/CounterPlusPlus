import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("The counter is at: "),

            Text(
              counter.toString(),
              style: TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 24),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 12,
              textDirection: TextDirection.rtl, // WHY IS IT TEXT DIRECTION AND NOT A BOOL TO CHECK IF ITS REVERSED OR NOT????
              children: [

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++;  
                    });
                  },
                  child: Text('Increment (+)')
                ),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (counter <= 0){
                        counter = 0;
                      }
                      else {
                        counter--;
                      }
                    });
                  },
                  child: Text('Decrement (-)')
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}