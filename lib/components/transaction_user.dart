import 'package:expenses/models/transaction.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final List<Transaction> _transaction = [
    Transaction(
      id: 't1',
      title: 'Novo tênis de Corrida',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      value: 211.30,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double value){
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );
    setState(() {
      _transaction.add(newTransaction);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(this._transaction),
        TransactionForm(this._addTransaction),
      ],
    );
  }
}