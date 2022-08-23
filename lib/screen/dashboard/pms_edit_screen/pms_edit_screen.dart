import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms_app/screen/dashboard/pms_edit_screen/pms_edit_screen_controller.dart';
import 'package:hrms_app/screen/dashboard/pms_edit_screen/pms_edit_screen_widget/pms_edit_screen_widget.dart';
import 'package:hrms_app/utils/app_style.dart';
import 'package:hrms_app/utils/color_res.dart';
import 'package:hrms_app/utils/image_res.dart';

class PmsEditScreen extends StatelessWidget {
  const PmsEditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PmsEditScreenController();
    return SingleChildScrollView(
      child: Container(
        color: Colors.grey.withOpacity(0.1),
        child: Column(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  ImageRes.blueBox,
                ),
              )),
              child: Container(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    Text(
                      "PMS",
                      style: AppTextStyle(
                          fontFamily: "inter",
                          weight: FontWeight.w600,
                          textColor: Colors.white,
                          size: 18),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Obx(
                    () => controller.isShow.value == false
                        ? InkWell(
                            onTap: () => controller.onChangeShow(),
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 10),
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        blurRadius: 2.0,
                                        spreadRadius: 2.0),
                                  ],
                                  borderRadius: BorderRadius.circular(5),
                                  color: ColorRes.lightGreenColor),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Dimensions",
                                    style: AppTextStyle(
                                        fontFamily: "inter",
                                        textColor: ColorRes.blackColor),
                                  ),
                                  const Icon(
                                    Icons.keyboard_arrow_down_sharp,
                                    color: ColorRes.grey,
                                  )
                                ],
                              ),
                            ),
                          )
                        : Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      blurRadius: 2.0,
                                      spreadRadius: 2.0),
                                ],
                                borderRadius: BorderRadius.circular(5),
                                color: ColorRes.white),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () => controller.onChangeShow(),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Dimensions",
                                        style: AppTextStyle(
                                            fontFamily: "inter",
                                            textColor: ColorRes.blackColor),
                                      ),
                                      const Icon(
                                        Icons.keyboard_arrow_down_sharp,
                                        color: ColorRes.grey,
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 1,
                                  color: ColorRes.grey,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Wrap(
                                  children: generateChildren(
                                      text: controller.text,
                                      selectedText: controller.selected),
                                )
                              ],
                            ),
                          ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: Get.height * 0.15,
                    width: Get.width,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 2.0,
                              spreadRadius: 2.0),
                        ],
                        borderRadius: BorderRadius.circular(5),
                        color: ColorRes.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "KPI",
                          style: AppTextStyle(
                              fontFamily: "inter",
                              textColor: ColorRes.green,
                              size: 17),
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetuer",
                          style: AppTextStyle(
                              fontFamily: "inter",
                              textColor: const Color(0xFF484848),
                              size: 15),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: Get.height * 0.2,
                    width: Get.width,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 2.0,
                              spreadRadius: 2.0),
                        ],
                        borderRadius: BorderRadius.circular(5),
                        color: ColorRes.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Self Review",
                          style: AppTextStyle(
                              fontFamily: "inter",
                              textColor: const Color(0xFFCDCAC8),
                              size: 17),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: ColorRes.grey),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorRes.grey),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Target",
                                style: AppTextStyle(
                                    textColor: ColorRes.red,
                                    fontFamily: "inter",
                                    size: 17),
                              ),
                              Text(
                                "Achivement",
                                style: AppTextStyle(
                                    textColor: ColorRes.red,
                                    fontFamily: "inter",
                                    size: 17),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                          child: Row(
                            children: [
                              Text("90%",style: AppTextStyle(textColor: ColorRes.blackColor),)
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
