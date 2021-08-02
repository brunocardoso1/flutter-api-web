import 'package:flutter/material.dart';

class TransactionAuthDialog extends StatefulWidget {

  final Function(String password) onConfirm;

  TransactionAuthDialog({
    @required this.onConfirm,
  });

  @override
  _TransactionAuthDialogState createState() => _TransactionAuthDialogState();
}

class _TransactionAuthDialogState extends State<TransactionAuthDialog> {
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        "Authenticate",
        textAlign: TextAlign.center,
      ),
      content: TextField(
        controller: _passwordController,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
        obscureText: true,
        maxLength: 4,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 50,
          letterSpacing: 32,
        ),
      ),
      actions: [
        TextButton(onPressed: () {
          widget.onConfirm(_passwordController.text);
          Navigator.pop(context);
        }, child: Text("Confirmar")),
        TextButton(onPressed: () {
          Navigator.pop(context);
        }, child: Text("Cancelar"))
      ],
    );
  }
}
