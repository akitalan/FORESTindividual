import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(const Caution());
}

class Caution extends StatelessWidget {
  const Caution({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/rain_house.gif'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          SizedBox.expand(
            child: Container(
              margin: const EdgeInsets.only(
                left: 5,
                top: 80,
                right: 5,
                bottom: 611,
              ),
              padding: const EdgeInsets.all(25.0),
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(30.0),
              ),

              child: DefaultTextStyle(
                style: const TextStyle(decoration: TextDecoration.none, fontSize: 32),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText('\n本日、大阪と○○県で、雨の予定あり。'),
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
            top: 95, // アニメーションテキストの位置より上に固定テキストを表示
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                '⚠',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 35,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
