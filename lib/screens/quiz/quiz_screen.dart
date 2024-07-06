import 'package:e3s2_hackathon/controllers/question_controller.dart';
import 'package:e3s2_hackathon/screens/quiz/body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6849EF),
        elevation: 0,
        
        actions: [
          TextButton(
            onPressed: _controller.nextQuestion,
            child: Text('Skip', style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
      body: Body(),
    );
  }
}
