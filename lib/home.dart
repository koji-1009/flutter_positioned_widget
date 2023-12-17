import 'package:flutter/material.dart';
import 'package:flutter_positioned_widget/patterns/overflow_box.dart';
import 'package:flutter_positioned_widget/patterns/overflow_box_list.dart';
import 'package:flutter_positioned_widget/patterns/overflow_box_list_button.dart';
import 'package:flutter_positioned_widget/patterns/overflow_box_small.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Positioned Widget'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('OverflowBox Widget'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const OverflowBoxPage(),
              ),
            ),
          ),
          ListTile(
            title: const Text('OverflowBox Widget (small)'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const OverflowBoxSmallPage(),
              ),
            ),
          ),
          ListTile(
            title: const Text('OverflowBox(List) Widget'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const OverflowBoxListPage(),
              ),
            ),
          ),
          ListTile(
            title: const Text('OverflowBox(List + Button) Widget'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const OverflowBoxListButtonPage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
