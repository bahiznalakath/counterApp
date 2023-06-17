import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int n=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },),actions: [
        IconButton(
          icon: const Icon(Icons.arrow_forward),
          onPressed: () {
            // Navigate to the forward screen
          },
        ),
      ],
        title: const Text("Counter App",
          style: TextStyle(
              fontWeight: FontWeight.bold)
          ,),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,


      ),
      body: Center(
        child: Container(
          width: 200,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30)
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Countdown",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.white12,
                  ),
                ),
                Text("$n",
                  style: const TextStyle
                    (fontSize: 50,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              setState(() {
                n++;
              });
            },

          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {
             /* if (n > 0)*/ {
                setState(() {
                  n--;
                });
              }
            },
          ),
        ],
      ),

    );
  }
}
