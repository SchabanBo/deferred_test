import 'package:flutter/foundation.dart';
import 'package:qlevar_router/qlevar_router.dart';

class DefferedLoader extends QMiddleware {
  final Future<dynamic> Function() loader;

  DefferedLoader(this.loader);
  @override
  Future onEnter() async {
    await loader();
  }
}
