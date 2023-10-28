import 'package:flutter/material.dart';
import 'package:mudslide_creators_hub_assignment/presentation/ui/screens/friends_screen.dart';
import 'package:mudslide_creators_hub_assignment/presentation/ui/screens/passions_screen.dart';
import 'package:mudslide_creators_hub_assignment/presentation/ui/screens/profile_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home: ProfileScreen(),
    );
  }
}
