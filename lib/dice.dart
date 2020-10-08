import 'dart:math';

import 'package:mobx/mobx.dart';

part 'dice.g.dart';

class DiceCount = _DiceCount with _$DiceCount;

abstract class _DiceCount with Store {
  @observable
  int left = Random().nextInt(6) + 1;

  @observable
  int right = Random().nextInt(6) + 1;

  @computed
  int get total => left + right;

  @action
  void roll() {
    right = left = Random().nextInt(6) + 1;
    left = Random().nextInt(6) + 1;
  }
}
