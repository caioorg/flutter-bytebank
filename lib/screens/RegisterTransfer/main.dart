import 'package:bytebank/screens/TransferList/model/Transfer.dart';
import 'package:bytebank/shared/widgets/Button/main.dart';
import 'package:bytebank/shared/widgets/Input/main.dart';
import 'package:flutter/material.dart';

class RegisterTransfer extends StatelessWidget {
  final TextEditingController _controllerFieldNumberAccount =
      TextEditingController();

  final TextEditingController _controllerFieldNumberValue =
      TextEditingController();

  _onSubmit(context) {
    final int accountNumber = int.tryParse(_controllerFieldNumberAccount.text);
    final double value = double.tryParse(_controllerFieldNumberValue.text);

    if (accountNumber != null && value != null) {
      final register = Transfer(value, accountNumber);

      if (register.accNumber != null && register.price != null) {
        Navigator.pop(context, register);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Transfer'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Input(
                'Number Account',
                icon: Icon(Icons.person),
                controller: _controllerFieldNumberAccount,
                type: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Input(
                'Price',
                icon: Icon(
                  Icons.monetization_on,
                ),
                controller: _controllerFieldNumberValue,
                type: TextInputType.number,
              ),
            ),
            Button('Confirme', () => _onSubmit(context))
          ],
        ),
      ),
    );
  }
}
