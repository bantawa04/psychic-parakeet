import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  @override
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTx;

  NewTransaction(this.addTx);

  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: "Title",
              ),
              controller: titleController,
              // onChanged: (value) => titleInput = value,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Price",
              ),
              controller: amountController,
              // onChanged: (value) => amountInput = value,
            ),
            TextButton(
              child: Text(
                'Add Transaction',
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
              onPressed: () {
                addTx(
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
