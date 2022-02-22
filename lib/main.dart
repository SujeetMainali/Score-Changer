import 'package:flutter/material.dart';

void main() {
  runApp(ScoreApp());
}

class ScoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Score App",
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  const ScoreHome({Key? key}) : super(key: key);

  @override
  _ScoreHomeState createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;

  void increaseNumber() {
    setState(() {
      number++;
    });
  }

  void decreaseNumber() {
    setState(() {
      if (number > 0) {
        number--;
      } else {
        Text("cant go less than 0");
      }
    });
  }

  void clear() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        backgroundColor: Colors.amber[600],
        title: const Text("Score Changer"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.restore_outlined),
        onPressed: clear,
      ),
      body: Column(
        children: [
          const SizedBox(height: 25),
          const Center(
            child: Text("Score is",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
          ),
          Center(
            child: Text(number.toString(),
                style: const TextStyle(
                    color: Colors.green,
                    fontSize: 125,
                    fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                color: Colors.green,
                child: const Text(
                  "Increase",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onPressed: increaseNumber,
              ),
              const SizedBox(
                width: 20,
              ),
              RaisedButton(
                color: Colors.red,
                child: const Text(
                  "Decrease",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                onPressed: decreaseNumber,
              )
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          Center(
            child: Text(
              'Developed By:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Image(image: AssetImage("images/sujeet.jpg",),height: 60,width: 60,),
          )
        ],
      ),
    );
  }
}
