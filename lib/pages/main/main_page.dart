import 'package:flutter/material.dart';
import 'package:qlevar_router/qlevar_router.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      body: ListView(children: [
        ListTile(
          title: const Text('Go to users'),
          onTap: () {
            QR.to('/users');
          },
        ),
        ListTile(
          title: const Text('Go to Categories'),
          onTap: () {
            QR.to('/categories');
          },
        ),
      ]),
    );
  }
}
