import 'package:capstone/widgets/app_large_text.dart';
import 'package:capstone/widgets/app_text.dart';
import 'package:capstone/misc/colors.dart';
import 'package:capstone/widgets/responsive_button.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  // ignore: prefer_interpolation_to_compose_strings
                  image: AssetImage("img/" + images[index]),
                  fit: BoxFit.fill,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 70, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: 'Hotels'),
                        AppText(
                          text: 'The place you dreamed',
                          size: 30,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 250,
                          child: AppText(
                            text:
                                '당신의 가장 편안한 숙소를 찾아 여행하세요. 배가 되는 즐거움, Hotels 어플이 함께합니다.',
                            color: AppColors.textColor2,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        ResponsiveButton(
                          width: 120,
                        ),
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: index == indexDots ? 25 : 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular((8)),
                            color: index == indexDots
                                ? AppColors.mainColor
                                : AppColors.mainColor.withOpacity(0.3),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
