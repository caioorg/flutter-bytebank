import 'package:bytebank/screens/RegisterTransfer/main.dart';
import 'package:bytebank/shared/utils/navigation.dart';
import 'package:flutter/material.dart';
import 'package:bytebank/screens/TransferList/model/Transfer.dart';
import 'package:bytebank/screens/TransferList/widgets/TransferItem/main.dart';

class TransferList extends StatefulWidget {
  final List<Transfer> _transfers = List.empty(growable: true);

  @override
  State<StatefulWidget> createState() {
    return _TransferListState();
  }
}

class _TransferListState extends State<TransferList> {
  _onRedirectNewRegisterTransfer(context) {
    final Future<Transfer> future = Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RegisterTransfer(),
      ),
    );

    future.then((value) {
      if (value != null) {
        setState(() {
          widget._transfers.add(value);
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transfers'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: widget._transfers.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final item = widget._transfers[index];
          return TransferItem(item);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _onRedirectNewRegisterTransfer(context),
      ),
    );
  }
}
