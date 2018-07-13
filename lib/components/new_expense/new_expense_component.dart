import 'dart:async';
import 'package:angular/angular.dart';
import 'package:tutorial_1/directives/lose_focus.dart';
import 'package:tutorial_1/view_models/new_expense_view_model.dart';
import 'package:tutorial_1/models/expense.dart';
import 'package:angular_forms/angular_forms.dart';

@Component(
  selector: 'new-expense',
  styleUrls: const ['new_expense_component.css'],
  templateUrl: 'new_expense_component.html',
  directives: const [formDirectives, LoseFocusOnClick],
  providers: const [],
)
class NewExpenseComponent {

  final _expenseEmitter = new StreamController<Expense>();
  @Output()
  Stream<Expense> get onExpenseCreated => _expenseEmitter.stream;

  NewExpenseViewModel viewModel = new NewExpenseViewModel("", 0.0);

  NewExpenseComponent();

  Future onAddExpenseClicked(double amount, String description) async {
    _expenseEmitter.add(new Expense(amount, description));
  }
}