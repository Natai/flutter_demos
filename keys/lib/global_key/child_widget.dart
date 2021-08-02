import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChildWidget extends StatefulWidget {
  ChildWidget({Key? key}) : super(key: key);

  @override
  _ChildWidgetState createState() => _ChildWidgetState();
}

class _ChildWidgetState extends State<ChildWidget> {
  var _value = 0.0;

  @override
  void initState() {
    super.initState();
    print('ChildWidget Init');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('ChildWidget Deactivate');
  }

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: _value,
      onChanged: (value) {
        setState(() {
          _value = value;
        });
      },
    );
  }
}
