import 'package:e3s2_hackathon/constants.dart';
import 'package:e3s2_hackathon/screens/quiz/quiz_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:websafe_svg/websafe_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        WebsafeSvg.asset('assets/icons/bg.svg', fit: BoxFit.fill,),
        SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(height: size.height * 0.08,),
              const Spacer(),
              Text(
                'Let\'s Start The Quiz',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const Text('Enter your info below'),
              // SizedBox(height: size.height * 0.2,),
              const Spacer(),
              const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFF1C2341),
                  hintText: 'Full Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
              ),
             const Spacer(),
              InkWell(
                onTap: () => Get.to(QuizScreen()),
                child: Container(
                  width: double.infinity, alignment: Alignment.center,
                  padding: EdgeInsets.all(kDefaultPadding * 0.75), // 15
                  decoration: BoxDecoration(
                    gradient: kPrimaryGradient,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Text(
                    'Start Quiz',
                    style: Theme.of(context).textTheme.button!.copyWith(
                          color: Colors.black,
                        ),
                  ),
                ),
              ),
              const Spacer(flex: 2,),
            ],
          ),
        ))
      ]),
    );
  }
}
