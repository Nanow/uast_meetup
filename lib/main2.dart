import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter MeetUp',
      home: MyHomePage(title: 'Eliaquim e top'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isLiked = false;

  void _darLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.network(
              'https://go.hurb.com/wp-content/uploads/2017/02/Koh-Tao-Tail%C3%A2ndia.jpg',
              fit: BoxFit.fitWidth,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: ListTile(
                title: Text('Qualquer Titulo'),
                subtitle: Text('Qualquer subtitulo'),
                trailing: Column(
                  children: [
                    GestureDetector(
                      onTap: _darLike,
                      child: IconBonito(
                        icone: Icons.star,
                        texto: '4',
                        isSelect: isLiked,
                      ),
                    )
                  ],
                ),
              ),
            ),
            LinhaBotoes(),
            Padding(
              padding: const EdgeInsets.only(left: 28, right: 28, top: 24),
              child: Text(
                "Vestibulum euismod imperdiet lacus vel lobortis. Ut feugiat est quis condimentum rutrum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin sem nunc, rutrum vel mattis vitae, luctus at est. Suspendisse cursus aliquet convallis. Integer quis hendrerit odio, nec aliquam mi. Morbi porta nisi quis justo laoreet, ut iaculis leo consectetur. Duis a mi consectetur, ornare nibh at, euismod sem. Integer iaculis mattis purus sit amet egestas. In vehicula, purus ut sagittis condimentum, diam dui ",
                textAlign: TextAlign.justify,
                style: GoogleFonts.baloo(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LinhaBotoes extends StatelessWidget {
  const LinhaBotoes({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconBonito(
          icone: Icons.phone,
          texto: 'ligar',
        ),
        IconBonito(
          icone: Icons.near_me,
          texto: 'Rota',
        ),
        IconBonito(
          icone: Icons.share,
          texto: 'Compartilhar',
        ),
      ],
    );
  }
}

class IconBonito extends StatelessWidget {
  final IconData icone;
  final String texto;
  final bool isSelect;

  IconBonito({this.icone, this.texto, this.isSelect = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      child: Column(
        children: [
          Icon(icone, color: isSelect ? Colors.red : Colors.grey),
          Text(texto),
        ],
      ),
    );
  }
}
