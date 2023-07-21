import 'package:flutter/material.dart';

class EmailPhone extends StatefulWidget {
  const EmailPhone({Key? key}) : super(key: key);

  @override
  State<EmailPhone> createState() => _EmailPhoneState();
}

class _EmailPhoneState extends State<EmailPhone> {
  String _selectedOption = 'email'; // Pre-select email option
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String hintText = _selectedOption == 'email'
        ? 'Write your email'
        : 'What is your phone';

    return Scaffold(
      appBar: AppBar(
        title: Text('Email and Phone'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              hintText,
              style: TextStyle(fontSize: 16),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedOption = 'email';
                    });
                  },
                  child: Text('Email'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedOption = 'phone';
                    });
                  },
                  child: Text('Phone'),
                ),
              ],
            ),
            SizedBox(height: 20),
            if (_selectedOption == 'email')
              Column(
                children: [
                  Text(''),
                  TextField(
                    controller: _textEditingController,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Perform sign-in functionality
                    },
                    child: Text('Sign In'),
                  ),
                ],
              ),
            if (_selectedOption == 'phone')
              Column(
                children: [
                  Text(''),
                  TextField(
                    controller: _textEditingController,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Send OTP functionality
                    },
                    child: Text('Send OTP'),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}
