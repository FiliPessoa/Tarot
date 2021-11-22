import 'package:flutter/material.dart';

import 'dart:math';

List<String> arcano = [
  "",
  "Louco", // 1
  "Sacerdotisa", // 2
  "Mago", // 3
  "Imperatriz", // 4
  "Imperador", // 5
  "Papa", // 6
  "Enamorado", // 7
  "Carro", // 8
  "Justiça", // 9
  "Eremita", // 10
  "Roda da Fortuna", // 11
  "Força", // 12
  "Pendurado", // 13
  "Diabo", // 14
  "Morte", // 15
  "Temperança", // 16
  "Lua", // 17
  "Torre", // 18
  "Estrela", // 19
  "Sol", // 20
  "Julgamento", // 21
  "Mundo" // 22
];

final Color indigo = Color(0xFFC5CAE9);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: indigo),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyHomePage(),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String buttonText1 = 'Mostrar Cartas';
  String buttonText2 = 'Mostrar Cartas';
  String buttonText3 = 'Mostrar Cartas';
  String buttonText4 = 'Mostrar Cartas';
  String buttonText5 = 'Mostrar Cartas';
  String buttonText6 = 'Mostrar Cartas';
  String buttonText7 = 'Mostrar Cartas';
  int resultadoTirada1 = 0;
  List<int> resultadoTirada2 = [0, 0];
  List<int> resultadoTirada3 = [0, 0, 0];
  List<int> resultadoTirada4 = [0, 0, 0, 0];
  List<int> resultadoTirada5 = [0, 0, 0, 0, 0];
  List<int> resultadoTirada6 = [0, 0, 0, 0, 0, 0];
  List<int> resultadoTirada7 = [0, 0, 0, 0, 0, 0, 0];

  @override
  initState() {
    super.initState();
  }

  void tirada1() {
    setState(() {
      resultadoTirada1 = nextNumber(min: 1, max: 22);
      print(resultadoTirada1);
      buttonText1 = 'Nova Leitura';
    });
  }

  void tirada2() {
    setState(() {
      resultadoTirada2 = nextNumbers(2, min: 1, max: 22);
      print(resultadoTirada2);
      buttonText2 = 'Nova Leitura';
    });
  }

  void tirada3() {
    setState(() {
      resultadoTirada3 = nextNumbers(3, min: 1, max: 22);
      print(resultadoTirada3);
      buttonText3 = 'Nova Leitura';
    });
  }

  void tirada4() {
    setState(() {
      resultadoTirada4 = nextNumbers(4, min: 1, max: 22);
      print(resultadoTirada4);
      buttonText4 = 'Nova Leitura';
    });
  }

  void tirada5() {
    setState(() {
      resultadoTirada5 = nextNumbers(5, min: 1, max: 22);
      print(resultadoTirada5);
      buttonText5 = 'Nova Leitura';
    });
  }

  void tirada6() {
    setState(() {
      resultadoTirada6 = nextNumbers(6, min: 1, max: 22);
      print(resultadoTirada6);
      buttonText6 = 'Nova Leitura';
    });
  }

  void tirada7() {
    setState(() {
      resultadoTirada7 = nextNumbers(7, min: 1, max: 22);
      print(resultadoTirada7);
      buttonText7 = 'Nova Leitura';
    });
  }

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      //tirada1

      Stack(alignment: Alignment.center, children: [
        Positioned(
            top: 10,
            child: ElevatedButton(
              child: Text(buttonText1),
              onPressed: () => tirada1(),
            )),
        Positioned(
          top: 200,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 75,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(arcano[resultadoTirada1]),
          ),
        ),
      ]),

      //tirada2

      Stack(alignment: Alignment.center, children: [
        Positioned(
            top: 10,
            child: ElevatedButton(
              onPressed: () => tirada2(),
              child: Text(buttonText2),
            )),
        Positioned(
          top: 200,
          right: 65,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 75,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(arcano[resultadoTirada2[1]]),
          ),
        ),
        Positioned(
          top: 200,
          left: 65,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 75,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(arcano[resultadoTirada2[0]]),
          ),
        ),
      ]),

      //tirada3

      Stack(alignment: Alignment.center, children: [
        Positioned(
            top: 10,
            child: ElevatedButton(
              onPressed: () => tirada3(),
              child: Text(buttonText3),
            )),
        Positioned(
          top: 160,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 75,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(arcano[resultadoTirada3[0]]),
          ),
        ),
        Positioned(
          top: 200,
          right: 25,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 75,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(arcano[resultadoTirada3[2]]),
          ),
        ),
        Positioned(
          top: 200,
          left: 25,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 75,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(arcano[resultadoTirada3[1]]),
          ),
        ),
      ]),

      //tirada4

      Stack(alignment: Alignment.center, children: [
        Positioned(
            top: 10,
            child: ElevatedButton(
              onPressed: () => tirada4(),
              child: Text(buttonText4),
            )),
        Positioned(
          top: 100,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 75,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(arcano[resultadoTirada4[0]]),
          ),
        ),
        Positioned(
          top: 340,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 75,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(arcano[resultadoTirada4[1]]),
          ),
        ),
        Positioned(
          top: 300,
          right: 25,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 75,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(arcano[resultadoTirada4[3]]),
          ),
        ),
        Positioned(
          top: 300,
          left: 25,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 75,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(arcano[resultadoTirada4[2]]),
          ),
        ),
      ]),

      //tirada5

      Stack(alignment: Alignment.center, children: [
        Positioned(
            top: 10,
            child: ElevatedButton(
              onPressed: () => tirada5(),
              child: Text(buttonText5),
            )),
        Positioned(
          top: 90,
          left: 25,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 75,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(arcano[resultadoTirada5[2]]),
          ),
        ),
        Positioned(
          top: 90,
          right: 25,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 75,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(arcano[resultadoTirada5[4]]),
          ),
        ),
        Positioned(
          top: 360,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 75,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(arcano[resultadoTirada5[0]]),
          ),
        ),
        Positioned(
          top: 250,
          right: 40,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 75,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(arcano[resultadoTirada5[3]]),
          ),
        ),
        Positioned(
          top: 250,
          left: 40,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 75,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(arcano[resultadoTirada5[1]]),
          ),
        ),
      ]),

      //tirada6

      Stack(alignment: Alignment.center, children: [
        Positioned(
            top: 10,
            child: ElevatedButton(
              onPressed: () => tirada6(),
              child: Text(buttonText6),
            )),
        Positioned(
          top: 75,
          left: 40,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 75,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(arcano[resultadoTirada6[0]]),
          ),
        ),
        Positioned(
          top: 75,
          right: 40,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 75,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(arcano[resultadoTirada6[3]]),
          ),
        ),
        Positioned(
          top: 220,
          right: 40,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 75,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(arcano[resultadoTirada6[4]]),
          ),
        ),
        Positioned(
          top: 220,
          left: 40,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 75,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(arcano[resultadoTirada6[1]]),
          ),
        ),
        Positioned(
          top: 365,
          left: 40,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 75,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(arcano[resultadoTirada6[2]]),
          ),
        ),
        Positioned(
          top: 365,
          right: 40,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 75,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(arcano[resultadoTirada6[5]]),
          ),
        ),
      ]),

      //tirada7

      Stack(alignment: Alignment.center, children: [
        Positioned(
            top: 10,
            child: ElevatedButton(
              onPressed: () => tirada7(),
              child: Text(buttonText7),
            )),
        Positioned(
          top: 75,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 75,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(arcano[resultadoTirada7[2]]),
          ),
        ),
        Positioned(
          top: 150,
          left: 25,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 75,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(arcano[resultadoTirada7[1]]),
          ),
        ),
        Positioned(
          top: 150,
          right: 25,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 75,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(arcano[resultadoTirada7[3]]),
          ),
        ),
        Positioned(
          top: 220,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 75,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(arcano[resultadoTirada7[0]]),
          ),
        ),
        Positioned(
          top: 300,
          right: 25,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 75,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(arcano[resultadoTirada7[5]]),
          ),
        ),
        Positioned(
            top: 300,
            left: 25,
            child: Container(
              padding: const EdgeInsets.all(5.0),
              width: 75,
              height: 130,
              color: (Colors.blue[300]),
              child: MeuTexto(arcano[resultadoTirada7[4]]),
            )),
        Positioned(
          top: 365,
          child: Container(
            padding: const EdgeInsets.all(5.0),
            width: 75,
            height: 130,
            color: (Colors.blue[300]),
            child: MeuTexto(arcano[resultadoTirada7[6]]),
          ),
        ),
      ]),
    ];
    final _kTabs = <Tab>[
      Tab(text: 'Tirada Simples'),
      Tab(text: 'Tirada Dupla'),
      Tab(text: 'Relacionamento'),
      Tab(text: 'A Flecha'),
      Tab(text: 'Dois Caminhos'),
      Tab(text: 'Interior e Exterior'),
      Tab(text: 'Sacerdotisa'),
    ];
    return DefaultTabController(
      length: _kTabs.length,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF3F51B5),
            title: Text('TaroT'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.account_circle),
                onPressed: () {},
              ),
            ],
          ),
          body: DefaultTabController(
            length: 7,
            initialIndex: 0,
            child: Column(
              children: <Widget>[
                Container(
                    height: 60.0,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.purple[50],
                    child: TabBar(
                      isScrollable: true,
                      labelColor: Colors.purple[800],
                      indicatorColor: Colors.purple[400],
                      indicatorWeight: 2.0,
                      labelPadding: EdgeInsets.only(right: 100.0, left: 100.0),
                      indicatorPadding: EdgeInsets.only(right: 10, left: 10.0),
                      labelStyle: TextStyle(fontSize: 16.0),
                      tabs: _kTabs,
                    )),
                Container(
                    height: 500,
                    child: TabBarView(
                      children: _kTabPages,
                    ))
              ],
            ),
          )),
    );
  }
}

int nextNumber({required int min, required int max}) =>
    min + Random().nextInt(max - min + 1);
List<int> nextNumbers(int length, {required int min, required int max}) {
  final numbers = Set<int>();

  while (numbers.length < length) {
    final number = nextNumber(min: min, max: max);
    numbers.add(number);
  }
  return List.of(numbers);
}

class MeuTexto extends StatefulWidget {
  String title;
  MeuTexto(this.title, {Key? key}) : super(key: key);

  @override
  _MeuTextoState createState() => _MeuTextoState();
}

class _MeuTextoState extends State<MeuTexto> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      widget.title,
      style: const TextStyle(
        fontSize: 11,
      ),
    ));
  }
}
