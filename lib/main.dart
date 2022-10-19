// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Kindacode.com',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // the image that will be displayed in the target
  Widget? _targetImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("888"),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover)),
        padding: const EdgeInsets.all(25),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  /// Draggable
                  Draggable<Widget>(
                    data: Image.asset(
                      "assets/images/boy_in.png",
                      fit: BoxFit.cover,
                    ),
                    child: Container(
                      width: 150,
                      height: 150,
                      alignment: Alignment.center,
                      // color: Colors.amber,
                      child: Image.asset(
                        "assets/images/coat.png",
                        fit: BoxFit.cover,
                      ),
                    ),

                    // The widget to show under the pointer when a drag is under way
                    feedback: Opacity(
                      opacity: 0.4,
                      child: Container(
                        // color: Colors.amber,
                        width: 150,
                        height: 150,
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/images/coat.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    childWhenDragging: Container(),
                  ),
                  SizedBox(
                    width: 20,
                  ),

                  /// Draggable
                  Draggable<Widget>(
                    data: Image.asset(
                      "assets/images/boy_in_hat.png",
                      fit: BoxFit.cover,
                    ),
                    child: Container(
                      width: 150,
                      height: 150,
                      alignment: Alignment.center,
                      // color: Colors.amber,
                      child: Image.asset(
                        "assets/images/hat.png",
                        fit: BoxFit.cover,
                      ),
                    ),

                    // The widget to show under the pointer when a drag is under way
                    feedback: Opacity(
                      opacity: 0.4,
                      child: Container(
                        // color: Colors.amber,
                        width: 150,
                        height: 150,
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/images/hat.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    childWhenDragging: Container(),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              /// Target
              DragTarget<Widget>(
                onAccept: (value) {
                  setState(() {
                    _targetImage = value;
                  });
                },
                builder: (_, candidateData, rejectedData) {
                  return Stack(
                    children: <Widget>[
                      Container(
                        width: 300,
                        height: 500,
                        child: Image.asset("assets/images/boy.png"),
                      ),
                      Container(
                        width: 300,
                        height: 500,
                        // color: Colors.amber.withOpacity(0.01),
                        alignment: Alignment.center,
                        child:
                            _targetImage != null ? _targetImage! : Container(),
                      ),
                    ],
                  );
                },
                onMove: (value) {
                  setState(() {
                    _targetImage = null;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
