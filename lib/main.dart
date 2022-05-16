import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:localization/screens/bloc/lang_view.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale("en"),Locale("uz")],
      path: "assets/lang",
      fallbackLocale: const Locale('uz'),
      startLocale: const Locale('uz'),
      child: const  MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LangView(),
    );
  }
}

