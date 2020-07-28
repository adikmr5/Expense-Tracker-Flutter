import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final TextEditingController amountCollector = TextEditingController();
  final TextEditingController titleCollector = TextEditingController();

  final Function onPress;
  NewTransaction(this.onPress);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: "Amount"),
            controller: amountCollector,
          ),
          TextField(
            decoration: InputDecoration(labelText: "Title"),
            controller: titleCollector,
          ),
          FlatButton(
            onPressed: () =>
                {onPress(titleCollector.text, int.parse(amountCollector.text))},
            child: Text("Add transaction"),
          )
        ],
      ),
    );
  }
}
