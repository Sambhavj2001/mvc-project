import 'package:flutter/material.dart';
import 'package:news/provider/theme_provider.dart';
import 'package:provider/provider.dart';

import 'view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) =>ThemeProvider(),
  builder:(context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
        title: 'Flutter Demo',
        themeMode: themeProvider.themeMode,
        theme: MyThemes.lightTheme,
        darkTheme: MyThemes.darkTheme,
        //theme: ThemeData(
        // primarySwatch: Colors.lightBlue,
        //),
        home: const HomePage()
    );
  },
  );
}
