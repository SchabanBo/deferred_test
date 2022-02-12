import 'package:deferred_test/pages/categories/categories_page.dart'
    deferred as categories;
import 'package:deferred_test/pages/main/main_page.dart';
import 'package:deferred_test/pages/users/users_page.dart' deferred as users;
import 'package:deferred_test/routes/deferred_loader.dart';
import 'package:qlevar_router/qlevar_router.dart';

class Routes {
  static final routes = <QRoute>[
    QRoute(path: '/', builder: () => const MainPage()),
    QRoute(
      path: '/users',
      builder: () => users.UsersPage(),
      middleware: [
        DefferedLoader(users.loadLibrary),
      ],
    ),
    QRoute(
      path: '/categories',
      builder: () => categories.CategorysPage(),
      middleware: [
        DefferedLoader(categories.loadLibrary),
      ],
    ),
  ];
}
