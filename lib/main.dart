import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/provider/auth_provider.dart';
import 'package:provider_state_management/provider/count_provider.dart';
import 'package:provider_state_management/provider/favourite_provider.dart';
import 'package:provider_state_management/view/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CountProvider()),
        ChangeNotifierProvider(create: (context) => FavouriteProvider()),
        ChangeNotifierProvider(create: (context) => AuthProvider()),
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'PROVIDER STATE MANAGEMENT',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
              useMaterial3: true,
            ),
            home: Login(),
          );
        },
      ),
    );
  }
}
