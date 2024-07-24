// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dice_counter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DiceCounter on _DiceCounter, Store {
  Computed<int>? _$diceSumComputed;

  @override
  int get diceSum => (_$diceSumComputed ??=
          Computed<int>(() => super.diceSum, name: '_DiceCounter.diceSum'))
      .value;

  late final _$leftDiceCountAtom =
      Atom(name: '_DiceCounter.leftDiceCount', context: context);

  @override
  int get leftDiceCount {
    _$leftDiceCountAtom.reportRead();
    return super.leftDiceCount;
  }

  @override
  set leftDiceCount(int value) {
    _$leftDiceCountAtom.reportWrite(value, super.leftDiceCount, () {
      super.leftDiceCount = value;
    });
  }

  late final _$rightDiceCountAtom =
      Atom(name: '_DiceCounter.rightDiceCount', context: context);

  @override
  int get rightDiceCount {
    _$rightDiceCountAtom.reportRead();
    return super.rightDiceCount;
  }

  @override
  set rightDiceCount(int value) {
    _$rightDiceCountAtom.reportWrite(value, super.rightDiceCount, () {
      super.rightDiceCount = value;
    });
  }

  late final _$_DiceCounterActionController =
      ActionController(name: '_DiceCounter', context: context);

  @override
  void rollDice() {
    final _$actionInfo = _$_DiceCounterActionController.startAction(
        name: '_DiceCounter.rollDice');
    try {
      return super.rollDice();
    } finally {
      _$_DiceCounterActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
leftDiceCount: ${leftDiceCount},
rightDiceCount: ${rightDiceCount},
diceSum: ${diceSum}
    ''';
  }
}
