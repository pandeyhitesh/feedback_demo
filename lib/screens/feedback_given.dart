import 'package:flutter/material.dart';

class FeedbackGiven extends StatefulWidget {
  @override
  _FeedbackGivenState createState() => _FeedbackGivenState();
}

class _FeedbackGivenState extends State<FeedbackGiven> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
      ),
    );
  }
}