import 'package:flutter/material.dart';

import './transaction.dart';
import './transaction_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        amount: 200, id: 't1', date: DateTime.now(), title: 'HDMI to VGA'),
    Transaction(amount: 300, id: 't2', date: DateTime.now(), title: 'BILL')
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      home: Scaffold(
          appBar: AppBar(
            title: Text("Expense Tracker"),
          ),
          body: Column(
            children: <Widget>[
              TransactionWidget(transactions[0]),
              TransactionWidget(transactions[1]),
            ],
          )),
    );
  }
}
