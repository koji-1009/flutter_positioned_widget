import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class OverflowBoxListPage extends StatelessWidget {
  const OverflowBoxListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OverflowBox(List) Widget'),
      ),
      body: SafeArea(
child: Column(
  children: [
    SizedBox(
      height: 50,
      child: ColoredBox(
        color: Theme.of(context)
            .colorScheme
            .tertiaryContainer
            .withOpacity(0.3),
        child: const SizedBox.expand(),
      ),
    ),
    SizedBox(
      height: 50,
      child: ColoredBox(
        color: Theme.of(context)
            .colorScheme
            .tertiaryContainer
            .withOpacity(0.6),
        child: const SizedBox.expand(),
      ),
    ),
    SizedBox(
      height: 50,
      child: ColoredBox(
        color: Theme.of(context).colorScheme.tertiaryContainer,
        child: Center(
          child: OverflowBox(
            maxWidth: 200,
            maxHeight: 200,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: FilledButton(
                      onPressed: () {
                        log('filled button pressed');
                      },
                      child: const Text('Filled'),
                    ),
                  ),
                ),
                const Positioned(
                  left: 0,
                  top: 50,
                  child: Text('Overflow text'),
                ),
                Positioned(
                  top: 50,
                  right: 0,
                  child: FilledButton.tonal(
                    onPressed: () {
                      log('tonal button pressed');
                    },
                    child: const Text('Tonal'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
            const Expanded(
              child: Markdown(
                data: '''```dart
Column(
  children: [
    SizedBox(
      height: 50,
      child: ColoredBox(
        color: Theme.of(context)
            .colorScheme
            .tertiaryContainer
            .withOpacity(0.3),
        child: const SizedBox.expand(),
      ),
    ),
    SizedBox(
      height: 50,
      child: ColoredBox(
        color: Theme.of(context)
            .colorScheme
            .tertiaryContainer
            .withOpacity(0.6),
        child: const SizedBox.expand(),
      ),
    ),
    SizedBox(
      height: 50,
      child: ColoredBox(
        color: Theme.of(context).colorScheme.tertiaryContainer,
        child: Center(
          child: OverflowBox(
            maxWidth: 200,
            maxHeight: 200,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: FilledButton(
                      onPressed: () {
                        log('filled button pressed');
                      },
                      child: const Text('Filled'),
                    ),
                  ),
                ),
                const Positioned(
                  left: 0,
                  top: 50,
                  child: Text('Overflow text'),
                ),
                Positioned(
                  top: 50,
                  right: 0,
                  child: FilledButton.tonal(
                    onPressed: () {
                      log('tonal button pressed');
                    },
                    child: const Text('Tonal'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  ],
),
```
        ''',
              ),
            )
          ],
        ),
      ),
    );
  }
}
