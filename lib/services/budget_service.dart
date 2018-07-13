import 'dart:async';
import 'package:tutorial_1/models/expense.dart';

abstract class BudgetService {
  Future setBudget(double amount);
  Future<List<Expense>> addExpense(Expense expense);
  Future<List<Expense>> getExpenses();
  Future<double> getBudget();
}

class MockBudgetService implements BudgetService {

  List<Expense> _expenses = [];
  double _budget = 10.0;

  @override
  Future<List<Expense>> addExpense(Expense expense) async {
    _expenses.add(expense);
    return getExpenses();
  }

  @override
  Future<List<Expense>> getExpenses() async {
    return _expenses;
  }

  @override
  Future setBudget(double amount) async {
    _budget = amount;
  }

  @override
  Future<double> getBudget() async {
    return _budget;
  }
}
