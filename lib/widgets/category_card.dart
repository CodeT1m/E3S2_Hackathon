import 'package:e3s2_hackathon/constants.dart';
import 'package:e3s2_hackathon/models/category.dart';
import 'package:e3s2_hackathon/screens/quiz/quiz_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(QuizScreen()), // navigate to quiz screen
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 20,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.1),
                blurRadius: 4.0,
                spreadRadius: .05,
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                category.thumbnail,
                height: kCategoryCardImageSize,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              category.name,
              style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold,
              ),
            ),
            // Text(
            //   '${category.noOfCourses.toString()} courses',
            //   style: Theme.of(context).textTheme.bodySmall,
            // )
          ],
        ),
      ),
    );
  }
}
