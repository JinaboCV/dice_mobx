import 'dart:math';

import 'package:mobx/mobx.dart';

part 'dice_counter.g.dart';

class DiceCounter = _DiceCounter with _$DiceCounter;

abstract class _DiceCounter with Store {
  @observable
  int leftDiceCount = Random().nextInt(6) + 1;

  @observable
  int rightDiceCount = Random().nextInt(6) + 1;

  @computed
  int get diceSum => leftDiceCount + rightDiceCount;

  @action
  void rollDice() {
    leftDiceCount = Random().nextInt(6) + 1;
    rightDiceCount = Random().nextInt(6) + 1;
  }
}
