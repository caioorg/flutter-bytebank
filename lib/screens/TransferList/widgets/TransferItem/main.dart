import 'package:flutter/material.dart';
import 'package:bytebank/screens/TransferList/model/Transfer.dart';

class TransferItem extends StatelessWidget {
  final Transfer _transfer;

  TransferItem(this._transfer);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text(_transfer.price.toString()),
            subtitle: Text(_transfer.accNumber.toString()),
          ),
        ],
      ),
    );
  }
}
