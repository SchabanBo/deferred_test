import 'package:flutter/material.dart';
import 'package:qlevar_router/qlevar_router.dart';

import 'package:deferred_test/routes/routes1.dart'; // Normal
// import 'package:deferred_test/routes/routes.dart'; // deferred

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routeInformationParser: const QRouteInformationParser(),
        routerDelegate: QRouterDelegate(Routes.routes));
  }
}
