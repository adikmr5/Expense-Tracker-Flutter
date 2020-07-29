import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionWidget extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionWidget(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 5, color: Colors.amber[200]),
                          shape: BoxShape.circle,
                          color: Colors.amber[200]),
                      child: Text(
                        "₹${transactions[index].amount}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '${transactions[index].title}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(DateFormat().format(transactions[index].date)),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: transactions.length,
        ));
  }
}
