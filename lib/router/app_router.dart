import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:requester/views/collection_page.dart';

import '../components/navigator.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
// todo 使用合理的Transaction
final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  debugLogDiagnostics: true,
  initialLocation: "/",
  // errorBuilder: (context, state) => ErrorPage(state),
  routes: [
    ShellRoute(
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("project/itgc-server"),
            elevation: 1,
            toolbarHeight: 26,
            backgroundColor: Theme.of(context).colorScheme.surface,
            titleTextStyle: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
              fontSize: 14,
            ),
          ),
          body: Row(
            children: <Widget>[
              const SideNavigator(),
              Expanded(
                child: child,
              )
            ],
          ),
        );
      },
      routes: [
        GoRoute(
          path: "/",
          builder: (context, state) => const CollectionPage(),
          pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const CollectionPage(),
          )
        ),
        GoRoute(
          path: "/settings",
          builder: (context, state) => const Text("settings"),
          pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const Text("Setting")
          )
        )
      ],
    )
  ],
);
