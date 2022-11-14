import 'package:flutter/material.dart';

import 'block_pattern/imc_bloc_pattern_page.dart';
import 'change_notifier/imc_change_notifier_page.dart';
import 'setState/imc_setstate_page.dart';
import 'value_notifier/imc_value_notifier_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _goToPage(BuildContext context, Widget page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return page;
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () => _goToPage(context, ImcSetstatePage()),
              child: Text('SetState')),
          ElevatedButton(
              onPressed: () => _goToPage(context, ValueNotifierPage()),
              child: Text('ValueNotifier')),
          ElevatedButton(
              onPressed: () => _goToPage(context, ImcChangeNotifierPage()),
              child: Text('ChangeNotifier')),
          ElevatedButton(
              onPressed: () => _goToPage(context, ImcBlocPatternPage()),
              child: Text('Bloc Pattern (Streams)')),
        ]),
      ),
    );
  }
}
