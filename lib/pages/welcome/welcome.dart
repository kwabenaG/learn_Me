// welcome page

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WelcomePage extends ConsumerWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        PageView(scrollDirection: Axis.horizontal, children: [
          Column(children: [
            // add image here
            const Text("one"),
            Container(
                margin: const EdgeInsets.only(top: 15),
                child: const Text("AA")),
            Container(child: [])
          ]),
        ]),
        const Positioned(child: Text("Widget One"))
      ]),
    );
  }
}
