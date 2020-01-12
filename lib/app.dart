import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tech_task/providers/ingredient_provider.dart';
import 'package:tech_task/providers/recipe_provider.dart';
import 'package:tech_task/screens/ingredient_page.dart';
import 'package:tech_task/screens/lunch_page.dart';
import 'package:tech_task/screens/recipe_page.dart';
import 'package:tech_task/settings/colors.dart';
import 'package:tech_task/settings/constants.dart';


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        title: 'Loadsmile Lunch App',
        theme: ThemeData(primarySwatch: primaryColor),
        routes: routes,
      ),
    );
  }

  final providers = [
    ChangeNotifierProvider<IngredientProvider>(create: (_) => IngredientProvider()),
    ChangeNotifierProvider<RecipeProvider>(create: (_) => RecipeProvider()),
  ];

  final Map<String, WidgetBuilder> routes = {
    lunchPage : (_) => LunchPage(),
    ingredientPage: (_) => IngredientPage(),
    recipePage: (_) => RecipePage(),
  };
  
}