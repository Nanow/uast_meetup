import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(
            'https://go.hurb.com/wp-content/uploads/2017/02/Koh-Tao-Tail%C3%A2ndia.jpg',
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(
                'Paisagem Bonita',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Realmentne e bonita'),
              trailing: Container(
                constraints: BoxConstraints(maxHeight: 200),
                child: StarWithNumber(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.call, color: Colors.blue),
                    Text(
                      'Call',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.star, color: Colors.blue),
                    Text(
                      'Star',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.share, color: Colors.blue),
                    Text(
                      'Share',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              'Mussum Ipsum, cacilds vidis litro abertis. A ordem dos tratores não altera o pão duris. In elementis mé pra quem é amistosis quis leo. Admodum accumsan disputationi eu sit. Vide electram sadipscing et per. Cevadis im ampola pa arma uma pindureta.',
            ),
          ),
        ],
      ),
    );
  }
}

class StarWithNumber extends StatefulWidget {
  @override
  _StarWithNumberState createState() => _StarWithNumberState();
}

class _StarWithNumberState extends State<StarWithNumber> {
  int likeNumber = 42;
  bool isLiked = false;

  void givenLike() {
    setState(() {
      if (isLiked) {
        likeNumber--;
      } else {
        likeNumber++;
      }
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$likeNumber'),
        GestureDetector(
          child: Icon(
            Icons.star,
            color: isLiked ? Colors.red : Colors.grey,
          ),
          onTap: givenLike,
        ),
      ],
    );
  }
}
