import 'package:flutter/material.dart';

class ExchangePage extends StatefulWidget {
  const ExchangePage({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  _ExchangePageState createState() => _ExchangePageState();
}

class _ExchangePageState extends State<ExchangePage> {
  var isChildFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isChildFirst ? widget.child : SizedBox.shrink(),
          TextButton(
            onPressed: () {
              setState(() {
                isChildFirst = !isChildFirst;
              });
            },
            child: Text('Exchange Position'),
          ),
          !isChildFirst ? widget.child : SizedBox.shrink(),
        ],
      ),
    );
  }
}
