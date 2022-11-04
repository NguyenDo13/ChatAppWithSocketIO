import 'package:chat_app/presentation/res/colors.dart';
import 'package:chat_app/presentation/res/dimentions.dart';
import 'package:chat_app/presentation/utils/constants.dart';
import 'package:flutter/material.dart';

class LoadingImg extends StatelessWidget {
  final bool isSender;
  final bool theme;
  const LoadingImg({super.key, required this.isSender, required this.theme});

  @override
  Widget build(BuildContext context) {
    // UI
    final colorBG = theme ? darkGreyDarkMode : lightGreyLightMode;
    final colorSenderBG = theme ? darkBlue : lightBlue;
    return Container(
      padding: EdgeInsets.all(Dimensions.height12),
      width: Dimensions.width220 - 6,
      decoration: BoxDecoration(
        color: isSender ? colorSenderBG : colorBG,
      ),
      child: Row(
        mainAxisAlignment:
            isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          SizedBox(
            height: Dimensions.height14,
            width: Dimensions.height14,
            child: const CircularProgressIndicator(
              strokeWidth: 1.0,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: Dimensions.width10,
          ),
          Text(
            'Đang tải lên 1 ảnh!',
            overflow: TextOverflow.ellipsis,
            maxLines: maxValueInteger,
            style: isSender
                ? Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(color: Colors.white)
                : Theme.of(context).textTheme.displaySmall,
          ),
        ],
      ),
    );
    // return SizedBox(
    //   width: Dimensions.screenWidth * 7 / 10,
    //   // height: Dimensions.height220 * 2,
    //   child: const Center(
    //     child: CircularProgressIndicator(
    //       strokeWidth: 2.0,
    //     ),
    //   ),
    // );
  }
}