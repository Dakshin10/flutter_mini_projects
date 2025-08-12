import 'package:expenses_tracker/widgets/expenses.dart';
import 'package:expenses_tracker/models/expense.dart';
import 'package:expenses_tracker/widgets/expenses_list/expenses_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses,required this.onRemoveExpese});

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpese;
 
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) =>Dismissible(
        key: ValueKey(expenses[index]), 
        background: Container(
          color: Theme.of(context).colorScheme.error.withOpacity(0.75),
          margin: EdgeInsets.symmetric(
            horizontal: Theme.of(context).cardTheme.margin!.horizontal
          ),
        ),
        onDismissed: (direction){
          onRemoveExpese(expenses[index]);
        },
        child:ExpensesItem(expenses[index])
      ),
      );
  }

}