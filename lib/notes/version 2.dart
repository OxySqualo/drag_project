// import 'package:flutter/material.dart';
// import 'package:drag_project/drag_class.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   static const String _title = 'Flutter Code Sample';

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: Scaffold(
//         appBar: AppBar(title: const Text(_title)),
//         body: const MyStatefulWidget(),
//       ),
//     );
//   }
// }

// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({super.key});

//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: <Widget>[
//         Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
//           DragStatefulWidget(),
//           SizedBox(width: 30),
//           DragStatefulWidget(),
//           SizedBox(width: 30),
//           DragStatefulWidget(),
//           SizedBox(width: 30),
//           DragStatefulWidget(),
//           SizedBox(width: 30),
//         ]),
//         DragTarget<String>(
//           builder: (
//             BuildContext context,
//             List<dynamic> accepted,
//             List<dynamic> rejected,
//           ) {
//             return Container(
//               height: 100.0,
//               width: 100.0,
//               color: Colors.cyan,
//               child: Center(
//                 child: Text('Value'),
//               ),
//             );
//           },
//           onAccept: (String data) {
//             setState(() {
//              Image =  Image.asset(
//           "assets/images/boy.png")
        
        
//             });
//           },
//         ),
//       ],
//     );
//   }
// }
        
//           // onLeave: (value) {},
//           // builder: (_, candidateData, rejectedData) {
//           //   return Container(
//           //     width: 300,
//           //     height: 200,
//           //     color: Colors.amber,
//           //     alignment: Alignment.center,
//           //     child: _targetImageUrl != null
//           //         ? Image.network(
//           //             _targetImageUrl!,
//           //             fit: BoxFit.cover,
//           //           )
//           //         : Container(),
//           //   );
//           // },
        
      
    
 

// // как я делала раньше
// // child: Draggable(
// //   child: Container(
// //     child: Image.asset("assets/images/boy_in.png"),
// //     height: 500,
// //     width: 300,
// //   ),
// //   feedback: Container(
// //     child: Image.asset("assets/images/coat.png"),
// //     height: 500,
// //     width: 500,
// //   ),
// //   childWhenDragging: Container(
// //     child: Image.asset("assets/images/boy.png"),
// //     height: 500,
// //     width: 500,
// //   ),
// // ),