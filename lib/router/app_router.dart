import 'package:go_router/go_router.dart';
import 'package:moviepedia_app/screens/screens.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, GoRouterState state) {
        return const HomeScreen();
      },
      // routes: <RouteBase>[
      //   GoRoute(
      //     path: 'buttons',
      //     builder: (context, GoRouterState state) {
      //       return const ButtonsScreen();
      //     },
      //   ),
      // ],
    ),
  ],
);
