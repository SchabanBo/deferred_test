import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class CategorysPage extends StatelessWidget {
  const CategorysPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Categorys'),
        ),
        body: Column(
          children: [
            Expanded(
              child: PlayAnimation<Color?>(
                  tween: ColorTween(begin: Colors.red, end: Colors.blue),
                  duration: const Duration(seconds: 2),
                  builder: (context, child, value) {
                    return Container(
                      color: value,
                      width: double.infinity,
                    );
                  }),
            ),
            Expanded(
              child: PlayAnimation<Color?>(
                  tween: ColorTween(
                      begin: Colors.indigoAccent, end: Colors.cyanAccent),
                  duration: const Duration(seconds: 2),
                  builder: (context, child, value) {
                    return Container(
                      color: value,
                      width: double.infinity,
                    );
                  }),
            ),
            Expanded(
              child: PlayAnimation<Color?>(
                  tween: ColorTween(begin: Colors.red, end: Colors.green),
                  duration: const Duration(seconds: 2),
                  builder: (context, child, value) {
                    return Container(
                      color: value,
                      width: double.infinity,
                    );
                  }),
            ),
            Expanded(
              child: PlayAnimation<Color?>(
                  tween: ColorTween(begin: Colors.amber, end: Colors.grey),
                  duration: const Duration(seconds: 2),
                  builder: (context, child, value) {
                    return Container(
                      color: value,
                      width: double.infinity,
                    );
                  }),
            )
          ],
        ));
  }
}
