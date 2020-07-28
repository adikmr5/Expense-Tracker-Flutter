import 'package:Expense_Tracker/models/transaction.dart';
import 'package:Expense_Tracker/widgets/new_transaction.dart';
import 'package:Expense_Tracker/widgets/transaction_widget.dart';
import 'package:flutter/material.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> transactions = [
    Transaction(
        amount: 200, id: 't1', date: DateTime.now(), title: 'HDMI to VGA'),
    Transaction(amount: 300, id: 't2', date: DateTime.now(), title: 'BILL'),
  ];
  void addTx(String title, int amount) {
    Transaction newTx = new Transaction(
        amount: amount,
        title: title,
        id: DateTime.now().toString(),
        date: DateTime.now());
    setState(() {
      transactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(addTx),
        ...transactions.map((e) => TransactionWidget(e)).toList()
      ],
    );
  }
}
