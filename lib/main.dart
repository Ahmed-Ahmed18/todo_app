import 'package:flutter/material.dart';
import 'package:todo_app/core/application_them.dart';
import 'package:todo_app/core/page_routes_name.dart';
import 'package:todo_app/core/routes_generator.dart';
import 'package:todo_app/moduls/splash/splash_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo App',
      theme: ApplicationThem.lightthem,
      initialRoute: PageRoutesName.initial,
      onGenerateRoute: RoutesGenerator.onGenerateRoutes,

    );
  }
}


