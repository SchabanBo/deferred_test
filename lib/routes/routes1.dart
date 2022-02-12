import 'package:deferred_test/pages/categories/categories_page.dart';
import 'package:deferred_test/pages/main/main_page.dart';
import 'package:deferred_test/pages/users/users_page.dart';
import 'package:qlevar_router/qlevar_router.dart';

class Routes {
  static final routes = <QRoute>[
    QRoute(path: '/', builder: () => const MainPage()),
    QRoute(
      path: '/users',
      builder: () => const UsersPage(),
    ),
    QRoute(
      path: '/categories',
      builder: () => const CategorysPage(),
    ),
  ];
}
