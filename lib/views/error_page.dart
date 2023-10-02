
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorPage extends StatelessWidget {
  final GoRouterState state;

  const ErrorPage(this.state, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(state.error!.message),
          TextButton(onPressed: () => {
            context.go('/')
          }, child: const Text("back"))
        ],
      ),
    );
  }

}
