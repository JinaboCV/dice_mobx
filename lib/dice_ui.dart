import 'package:dice/dice_counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class DicePage extends StatelessWidget {
  const DicePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) => Provider<DiceCounter>(
      create: (context) => DiceCounter(),
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            title: Center(
              child: Text(
                'Tap the dice !!!'.toUpperCase(),
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Hind'),
              ),
            ),
          ),
          body: SafeArea(child: DiceView())));
}

class DiceView extends StatelessWidget {
  const DiceView({super.key});

  @override
  Widget build(BuildContext context) {
    final diceCounter = Provider.of<DiceCounter>(context);
    return Container(
      color: Colors.lightBlue,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextButton(
                      onPressed: diceCounter.rollDice,
                      child: Observer(
                        builder: (_) => Image.asset(
                            'assets/images/dice${diceCounter.leftDiceCount}.png'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: diceCounter.rollDice,
                      child: Observer(
                        builder: (_) => Image.asset(
                            'assets/images/dice${diceCounter.rightDiceCount}.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Observer(
                builder: (_) => Text(
                  'Total ${diceCounter.diceSum}',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 16,
                      fontFamily: 'Verdana'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
