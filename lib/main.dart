import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_dbestech/change_course.dart';
import 'package:provider_dbestech/mycourses.dart';

void main() {
  runApp(ChangeNotifierProvider(
    child: const MyApp(),
    create: (_) => ChangeCourse(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 70, left: 20, right: 20),
              width: double.maxFinite,
              height: 70,
              decoration: BoxDecoration(
                color: const Color(0xFF5c67c1),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Center(
                child: Text(
                  'We are learning ${Provider.of<ChangeCourse>(context).subject}',
                  style: const TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
            const MyCourses(
              course: 'GetX',
            ),
            const MyCourses(
              course: 'Bloc',
            ),
            const MyCourses(
              course: 'Cubit',
            ),
          ],
        ),
      ),
    );
  }
}
