import 'package:flutter/material.dart';

import 'global_key/child_widget.dart';
import 'global_key/exchange_page.dart';
import 'global_key/insert_page.dart';
import 'local_key/stateful_key_page.dart';
import 'local_key/stateless_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _PushListItem(
            title: 'Exchange Without Key',
            pushedPage: ExchangePage(
              child: ChildWidget(),
            ),
          ),
          _PushListItem(
            title: 'Exchange With LocalKey',
            pushedPage: ExchangePage(
              child: ChildWidget(key: UniqueKey()),
            ),
          ),
          _PushListItem(
            title: 'Exchange With GlobalKey',
            pushedPage: ExchangePage(
              child: ChildWidget(key: GlobalKey()),
            ),
          ),
          _PushListItem(
            title: 'Insert Without Key',
            pushedPage: InsertPage(
              child: ChildWidget(),
            ),
          ),
          _PushListItem(
            title: 'Insert With LocalKey',
            pushedPage: InsertPage(
              child: ChildWidget(key: UniqueKey()),
            ),
          ),
          _PushListItem(
            title: 'Insert With GlobalKey',
            pushedPage: InsertPage(
              child: ChildWidget(key: GlobalKey()),
            ),
          ),
          _PushListItem(
            title: 'Exchange Stateless without LocalKey',
            pushedPage: StatelessPage(),
          ),
          _PushListItem(
            title: 'Exchange Stateful without LocalKey',
            pushedPage: StatefulKeyPage(useKey: false),
          ),
          _PushListItem(
            title: 'Exchange Stateful with LocalKey',
            pushedPage: StatefulKeyPage(useKey: true),
          ),
        ],
      ),
    );
  }
}

class _PushListItem extends StatelessWidget {
  const _PushListItem({
    Key? key,
    required this.title,
    this.pushedPage,
  }) : super(key: key);

  final String title;
  final Widget? pushedPage;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: pushedPage == null
          ? null
          : () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return pushedPage!;
              }));
            },
    );
  }
}
