import 'dart:html';

import 'package:angular/angular.dart';

@Directive(selector: '[loseFocus]')
class LoseFocusOnClick {
  LoseFocusOnClick(this._el);

  final Element _el;

  @HostListener('mouseup')
  void onMouseUp() {
    _loseFocus();
  }

  @HostListener('mouseout')
  void onMouseOut() {
    _loseFocus();
  }

  void _loseFocus() {
    _el.blur();
  }
}