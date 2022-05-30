import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application
      debugShowCheckedModeBanner: false,

      title: 'Flutter Stateful Clicker Counter',
      theme: ThemeData(
        // Application theme data, you can set the colors for the application as
        // you want
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'Mi foto Gen 19-22'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,

        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.

        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFF6E8F4),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color(0xFFE60491),
                      width: 5,
                    ),
                  ),
                  child: Text(
                    'Martínez Rodríguez Carla Andrea',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Divider(
                height: 60,
                thickness: 7,
                indent: 50,
                endIndent: 50,
                color: Color(0xFFBA0979),
              ),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                ),
                child: Image.network(
                  'https://scontent.fcjs4-1.fna.fbcdn.net/v/t1.15752-9/279934519_687617745847316_5570935641073889406_n.jpg?_nc_cat=110&ccb=1-6&_nc_sid=ae9488&_nc_ohc=ldSRjTS3naIAX8Rn6Mm&_nc_ht=scontent.fcjs4-1.fna&oh=03_AVLeX5oljnIRiZIq30Ui5bWLzJQr-z6q5ZrB3I4i_tmFQg&oe=62A3E4C2',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Divider(
                height: 60,
                thickness: 7,
                indent: 50,
                endIndent: 50,
                color: Color(0xFFBA0979),
              ),
              Container(
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFF6E8F4),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0xFFE60491),
                    width: 5,
                  ),
                ),
                child: Text(
                  '6to I Programación',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
