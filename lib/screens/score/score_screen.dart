import 'package:e3s2_hackathon/constants.dart';
import 'package:e3s2_hackathon/controllers/question_controller.dart';
import 'package:e3s2_hackathon/screens/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    !.copyWith(color: kSecondaryColor),
              ),
              Spacer(),
              Text(
                "${_qnController.correctAns * 10}/${_qnController.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    !.copyWith(color: kSecondaryColor),
              ),
              Spacer(flex: 3),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                    onTap: () => Get.to(const BaseScreen()),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(kDefaultPadding * 0.75),
                      decoration: const BoxDecoration(
                          gradient: kPrimaryGradient,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Text(
                        'Go Back To Home',
                        style: Theme.of(context)
                            .textTheme
                            .button!
                            .copyWith(color: Colors.black),
                      ),
                    ),
                  ),
              ),
              Spacer(flex: 2),
            ],
          )
        ],
      ),
    );
  }
}