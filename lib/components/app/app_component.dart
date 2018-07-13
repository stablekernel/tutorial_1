import 'dart:async';
import 'package:angular/angular.dart';
import 'package:tutorial_1/directives/expense_hover.dart';
import 'package:tutorial_1/view_models/app_view_model.dart';
import 'package:tutorial_1/components/expense/expense_component.dart';
import 'package:tutorial_1/components/new_expense/new_expense_component.dart';
import 'package:tutorial_1/services/budget_service.dart';
import 'package:tutorial_1/models/expense.dart';
// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [coreDirectives, ExpenseComponent, NewExpenseComponent, ExpenseHover],
  providers: const [],
)
class AppComponent implements OnInit {
  BudgetService _budgetService;
  AppViewModel viewModel = new AppViewModel(0.0, []);

  AppComponent(this._budgetService);

  @override
  ngOnInit() async {
    viewModel.budget = await _budgetService.getBudget();
    viewModel.expenses = await _budgetService.getExpenses();
  }

  Future onExpenseCreated(Expense expense) async {
    viewModel.expenses = await _budgetService.addExpense(expense);
  }
}
