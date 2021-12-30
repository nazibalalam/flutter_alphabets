import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());
  for (String str in alphabets) {
    print(str);
  }
  ;
  print(alphabets);
}

List<String> alphabets =
    "A B C D E F G H I J K L M N O P Q R S T U V W X Y Z".split(' ');

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Wrap(
            children: [alphabetContainer(alphabets[0])],
          ),
        ],
      ),
    );
  }
}

Container alphabetContainer(String str, {Color color = Colors.blue}) {
  return Container(
    color: color,
    child: Text(str),
  );
}
