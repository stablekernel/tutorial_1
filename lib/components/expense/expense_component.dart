import 'package:angular/angular.dart';
import 'package:tutorial_1/view_models/expense_view_model.dart';
import 'package:tutorial_1/models/expense.dart';

@Component(
  selector: 'expense',
  styleUrls: const ['expense_component.css'],
  templateUrl: 'expense_component.html',
  directives: const [],
  providers: const [],
)
class ExpenseComponent {

  @Input("expense")
  set expense(Expense newExpense) {
    viewModel = new ExpenseViewModel(newExpense);
  }

  ExpenseViewModel viewModel;
}