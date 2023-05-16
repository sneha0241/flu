

import 'package:firebase_core/firebase_core.dart';
import 'package:flu/welcomee.dart';
import 'package:flutter/material.dart';
Future<void>main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: fwelcome(),));
}
class fwelcome extends StatelessWidget {
  const fwelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'flutter auth demo',
      home:fwelcome(),
    );
  }
}
