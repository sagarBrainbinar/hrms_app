import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrms_app/screen/dashboard/pms_edit_screen/pms_edit_screen.dart';
import 'package:hrms_app/screen/pms_screens/pms_status/pms_status_controller.dart';
import 'package:hrms_app/screen/pms_screens/pms_status/widgets/pms_status_tile.dart';
import 'package:hrms_app/screen/pms_screens/pms_status/widgets/widgets.dart';
import 'package:hrms_app/utils/color_res.dart';
import 'package:hrms_app/utils/string_res.dart';

class PmsStatusScreen extends StatelessWidget {
  const PmsStatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PmsStatusController();
    return SingleChildScrollView(
      child: Column(
        children: [
          appBar(),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.only(bottom: 17, right: 10, left: 10),
            decoration: const BoxDecoration(
              color: ColorRes.white2, /*border: Border.all()*/
            ),
            child: Row(
              children: [
                pmsBox(
                    topColor: ColorRes.redColor,
                    title: Strings.overdue,
                    text: 10),
                pmsBox(
                    topColor: ColorRes.orangeColor,
                    title: Strings.notStarted,
                    text: 15),
                pmsBox(
                    topColor: ColorRes.lightYellow,
                    title: Strings.inProgress,
                    text: 4),
                pmsBox(
                    topColor: ColorRes.lightGreen,
                    title: Strings.completed,
                    text: 5),
              ],
            ),
          ),
          Obx(() {
            return Container(
                color: ColorRes.white,
                child: ListView.builder(
                    itemCount: controller.title.length,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            Get.to(() => const PmsEditScreen());
                          },
                          child: pmsStatusTile(
                              name: controller.title[index],
                              total: controller.total[index],
                              completed: controller.completed[index],
                              inProgress: controller.inProgress[index],
                              overdue: controller.overdue[index]));
                    }));
          })
        ],
      ),
    );
  }
}
