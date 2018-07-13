import 'package:angular/di.dart';
import 'package:tutorial_1/services/budget_service.dart';

MockBudgetService mockBudgetServiceFactory() => new MockBudgetService();
const MockBudgetServiceProvider = const Provider<MockBudgetService>(MockBudgetService,
    useFactory: mockBudgetServiceFactory,
    deps: const []);
