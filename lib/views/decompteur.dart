import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/timer_bloc.dart';
import '../pulseur.dart';
import 'boutons.dart';
import 'circulaire.dart';

class Decompteur extends StatelessWidget {
  const Decompteur({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TimerBloc(ticker: const Pulseur()),
      child: const Scaffold(
        body: Stack(
          children: [
            SizedBox.expand(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 103, 80, 160),
                      Colors.white,
                      // Colors.blue.shade500,
                    ],
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 100),
                  child: Center(child: Cercle()),
                ),
                Boutons(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
