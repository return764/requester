import 'package:flutter/material.dart';

class CollectionPage extends StatefulWidget {
  const CollectionPage({super.key});

  @override
  State<StatefulWidget> createState() => _CollectionPageState();

}

class _CollectionPageState extends State<CollectionPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 200,
          child: ListView(
            children: const [
              Card(
                child: ListTile(
                  title: Text("hello world"),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("hello world"),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

}
