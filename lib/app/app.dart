import 'package:flutter/material.dart';
import 'package:quran/generated/i18n.dart';
import 'package:quran/common/routes/routes.dart';
import 'package:quran/common/routes/route_generator.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const <
          LocalizationsDelegate<WidgetsLocalizations>>[
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      localeResolutionCallback:
          S.delegate.resolution(fallback: const Locale('en', '')),
      localeListResolutionCallback:
          S.delegate.listResolution(fallback: const Locale('en', '')),
      title: 'Quran',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: Routes.home,
    );
  }
}
