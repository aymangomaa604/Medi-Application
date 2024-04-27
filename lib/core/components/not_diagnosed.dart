import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team/core/components/custom_material_button.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_image.dart';
import 'package:team/core/utils/response_font_size.dart';

class NotDiagnosed extends StatelessWidget {
  const NotDiagnosed({
    super.key,
    required this.response,
  });
  final String response;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(height: context.height/3.5,MediImage.notDiagnosed),
        SizedBox(
          height: context.height/30,
          width: context.width,
          child: FittedBox(
            child: AutoSizeText(response,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: getResponseFontSize(context: context, fontSize: 18),
                  fontWeight: FontWeight.bold,
                )),
          ),
        ),
        const Divider(),
        SizedBox(
          height: context.height/30,
          width: context.width,
          child: const Align(
            alignment: Alignment.center,
            child: FittedBox(
              child: AutoSizeText(
                "Your health is fine now , I'm glad to tell you that .",
                textAlign: TextAlign.center,
                style: TextStyle(color: MediColors.fourthColor, fontSize: 8),
              ),
            ),
          ),
        ),
        const Divider(),
        FittedBox(
          child: CustomButton(
              title: "Ok",
              onPressed: () {
                Get.back();
              }),
        ),
      ],
    );
  }
}
