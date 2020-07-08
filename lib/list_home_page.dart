import 'package:flutter/material.dart';
import 'package:flutter_common_views/page/base_page.dart';

typedef PageMenuAction = BasePage Function(PageMenuItem item);

class PageMenuItem {
  final String menuTitle;
  final PageMenuAction menuAction;

  PageMenuItem.fromData(this.menuTitle,{this.menuAction});

  BasePage doMenuAction() {
    if (this.menuAction != null) {
      return this.menuAction(this);
    } else {
      return BasePage(title: menuTitle, stateBuilder: null);
    }
  }
}


class ListHomeState extends BasePageState {
  
}
