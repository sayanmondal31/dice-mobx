// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dice.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DiceCount on _DiceCount, Store {
  Computed<int> _$totalComputed;

  @override
  int get total => (_$totalComputed ??=
          Computed<int>(() => super.total, name: '_DiceCount.total'))
      .value;

  final _$leftAtom = Atom(name: '_DiceCount.left');

  @override
  int get left {
    _$leftAtom.reportRead();
    return super.left;
  }

  @override
  set left(int value) {
    _$leftAtom.reportWrite(value, super.left, () {
      super.left = value;
    });
  }

  final _$rightAtom = Atom(name: '_DiceCount.right');

  @override
  int get right {
    _$rightAtom.reportRead();
    return super.right;
  }

  @override
  set right(int value) {
    _$rightAtom.reportWrite(value, super.right, () {
      super.right = value;
    });
  }

  final _$_DiceCountActionController = ActionController(name: '_DiceCount');

  @override
  void roll() {
    final _$actionInfo =
        _$_DiceCountActionController.startAction(name: '_DiceCount.roll');
    try {
      return super.roll();
    } finally {
      _$_DiceCountActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
left: ${left},
right: ${right},
total: ${total}
    ''';
  }
}
