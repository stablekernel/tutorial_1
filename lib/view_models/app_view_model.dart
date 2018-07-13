import 'package:tutorial_1/models/expense.dart';
import 'package:intl/intl.dart';

class AppViewModel {
  AppViewModel(this._budget, this.expenses);

  double _budget;
  List<Expense> expenses;
  double get _balance => _budget - expenses.fold(0.0, (oldTotal, expense) => oldTotal + expense.amount);
  final _currencyFormatter = new NumberFormat("#,##0.00", "en_US");

  set budget(double newBudget) {
    _budget = newBudget;
  }
  get budget => "\$${_currencyFormatter.format(_budget)}";
  get balance => "\$${_currencyFormatter.format(_balance)}";

  bool get isNoExpensesVisible => expenses.isEmpty;
  bool get isBalancePositive => _balance >=0;
}