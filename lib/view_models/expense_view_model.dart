import 'package:tutorial_1/models/expense.dart';
import 'package:intl/intl.dart';

class ExpenseViewModel {
  ExpenseViewModel(this._expense);

  Expense _expense;

  String get description => _expense.description;
  String get amount => "\$${_currencyFormatter.format(_expense.amount)}";
  final _currencyFormatter = new NumberFormat("#,##0.00", "en_US");
}
