import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/count_provider.dart';
import 'package:provider_state_management/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CountProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PROVIDER STATE MANAGEMENT',
        theme: ThemeData(
          colorScheme: .fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
