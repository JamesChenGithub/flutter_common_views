import 'package:flutter/material.dart';

typedef MenuAction = void Function(MenuItem item);

class MenuItem {
  final String menuTitle;
  final MenuAction menuAction;

  MenuItem.fromData(this.menuTitle,{this.menuAction});

  void doMenuAction() {
    if (this.menuAction != null) {
      this.menuAction(this);
    }
  }
}

