import 'package:clone_money_thunder/firebase_options.dart';
import 'package:clone_money_thunder/page/home-page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'page/product_page.dart';

Future<void> main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);

    runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Dynamic Links',
          routes: <String, WidgetBuilder>{
            '/': (BuildContext context) => MyApp(),
            '/men-page': (BuildContext context) => ProductPage(
                  pageName: 'Men Page',
                ),
            '/women-page': (BuildContext context) => ProductPage(
                  pageName: 'Women Page',
                ),
            '/children-page': (BuildContext context) => ProductPage(
                  pageName: 'Children Page',
                ),
          }),
    );
  } catch (e) {
    runApp(const MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in a Flutter IDE). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        //primarySwatch: Color(0xFF293A4E),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF293A4E),
          secondary: const Color(0xFFFFC107),
        ),
      ),
      home: HomePage(),
    );
  }
}
