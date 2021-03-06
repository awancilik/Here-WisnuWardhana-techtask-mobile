import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_task/application/providers/ingredient_provider.dart';
import 'package:tech_task/application/providers/recipe_provider.dart';
import 'package:tech_task/domain/settings/colors.dart';
import 'package:tech_task/domain/settings/constants.dart';
import 'package:tech_task/presentation/screens/ingredient_page.dart';
import 'package:tech_task/presentation/screens/lunch_page.dart';
import 'package:tech_task/presentation/screens/recipe_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        title: 'Loadsmile Lunch App',
        theme: ThemeData(primarySwatch: PRIMARY_COLOR),
        routes: routes,
      ),
    );
  }

  final providers = [
    ChangeNotifierProvider<IngredientProvider>(create: (_) => IngredientProvider()),
    ChangeNotifierProvider<RecipeProvider>(create: (_) => RecipeProvider()),
  ];

  final Map<String, WidgetBuilder> routes = {
    LUNCH_PAGE_ROUTE : (_) => LunchPage(),
    INGREDIENT_PAGE_ROUTE: (_) => IngredientPage(),
    RECIPE_PAGE_ROUTE: (_) => RecipePage(),
  };
  
}