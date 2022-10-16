// import 'dart:js';
//
// import 'package:flutter/material.dart';
//
// import 'main.dart';
//
// class Splash extends StatefulWidget {
//   const Splash({Key? key}) : super(key: key);
//
//   @override
//   State<Splash> createState() => _SplashState();
// }
//
// class _SplashState extends State<Splash> {
//   @override
//   void initState() {
//     super.initState();
//     navigatetohome();
//   }
//
//   navigatetohome() async {
//     await Future.delayed(Duration(microseconds: 1500), () {});
//     Navigator.pushReplacement(
//         this.context,
//         MaterialPageRoute(
//             builder: (context) => MyHomePage(
//                   title: '',
//                 )));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage('images/splash.png'), fit: BoxFit.cover),
//         ),
//         child: Column(
//     mainAxisAlignment: MainAxisAlignment.end,
//     children: [
//       Container(
//     padding: const EdgeInsets.all(16),
//     width: MediaQuery.of(context).size.width,
//     // child: ElevatedButton.icon(onPressed: onPressed, icon: Icon(Icon.phone), label: Text('LOGIN')),
//     )
//     ],
//       ),
//       ),
//     );
//   }
// }
