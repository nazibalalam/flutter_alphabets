import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

List<String> alphabets =
    "A B C D E F G H I J K L M N O P Q R S T U V W X Y Z".split(' ');

List<Color> colors = <Color>[
  Colors.blue,
  Colors.brown,
  Colors.cyan,
  Colors.deepOrange,
  Colors.amber,
  Colors.deepPurple,
  Colors.green,
  Colors.grey,
  Colors.indigo,
  Colors.lime,
  Colors.orange,
  Colors.pink,
  Colors.purple,
  Colors.red,
  Colors.teal,
  Colors.yellow,
  Colors.blueGrey,
  Colors.cyanAccent,
  Colors.amberAccent,
  Colors.greenAccent,
  Colors.indigoAccent,
  Colors.limeAccent,
  Colors.orangeAccent,
  Colors.blueAccent,
  Colors.pinkAccent,
  Colors.deepPurpleAccent
];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Alphabets",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 15.0),
              Wrap(
                direction: Axis.horizontal,
                spacing: 10.0,
                runSpacing: 10.0,
                children: [
                  for (var i = 0; i < 26; i++)
                    alphabetContainer(alphabets[i], colors[i])
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Container alphabetContainer(String alphabet, Color color) {
  return Container(
    decoration: BoxDecoration(
      color: color,
      borderRadius: const BorderRadius.all(
        Radius.circular(5.0),
      ),
    ),
    height: 50,
    width: 50,
    child: Center(
      child: Text(
        alphabet,
        style: const TextStyle(color: Colors.white),
      ),
    ),
  );
}
