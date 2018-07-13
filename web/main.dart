import 'package:angular/angular.dart';

import 'package:tutorial_1/components/app/app_component.template.dart' as app;
import 'package:tutorial_1/dependency_injection/app_providers.dart';
import 'package:tutorial_1/services/budget_service.dart';
import 'main.template.dart' as self;

@GenerateInjector([
  const Provider(BudgetService, useFactory: mockBudgetServiceFactory),
])
final InjectorFactory injector = self.injector$Injector;

void main() {
  runApp(app.AppComponentNgFactory, createInjector: injector);
}
