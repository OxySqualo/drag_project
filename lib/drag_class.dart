import 'package:flutter/material.dart';

class DragStatefulWidget extends StatefulWidget {
  const DragStatefulWidget({super.key});

  @override
  State<DragStatefulWidget> createState() => _DragStatefulWidgetState();
}

class _DragStatefulWidgetState extends State<DragStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Draggable<String>(
      // Data is the value this Draggable stores.
      data: "assets/images/coat.png",

      feedback: Opacity(
        opacity: 0.4,
        child: Container(
          color: Colors.deepOrange,
          height: 100,
          width: 100,
          child: Image.asset("assets/images/boy_in.png", fit: BoxFit.cover),
        ),
      ),

      childWhenDragging: Container(
        height: 100.0,
        width: 100.0,
        color: Colors.lightGreenAccent,
        child: const Center(
          child: Text('Child When Dragging'),
        ),
      ),

      child: Container(
        height: 100.0,
        width: 100.0,
        color: Colors.grey,
        child: Image.asset(
          "assets/images/boy.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
