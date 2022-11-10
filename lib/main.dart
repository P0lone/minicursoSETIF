import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SomaKK',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Soma'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final avatar = const CircleAvatar(
    backgroundImage: NetworkImage('https://t2.tudocdn.net/632975?w=1920'),
    radius: 150,
  );

  final nome = const Text(
    'Cidinei',
    style: TextStyle(fontSize: 30),
    textAlign: TextAlign.center,
  );

  final btnFone = IconButton(
    onPressed: () {},
    icon: const Icon(Icons.phone),
    color: Colors.black87,
  );

  final btnEmail = IconButton(
    onPressed: () {},
    icon: const Icon(Icons.email),
    color: Colors.black87,
  );

  final btnSMS = IconButton(
    onPressed: () {},
    icon: const Icon(Icons.sms),
    color: Colors.black87,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Text(
            'Curso de Flutter',
            style: TextStyle(color: Colors.white, fontSize: 35),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            avatar,
            const SizedBox(
              height: 15,
            ),
            nome,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [btnFone, btnEmail, btnSMS],
            ),
          ],
        ));
  }
}
