import 'package:get/get.dart';
import 'package:hrms_app/screen/home_screen/home_screen.dart';
import 'package:hrms_app/screen/pms_screens/pms_status/pms_status_screen.dart';
import 'package:hrms_app/screen/profile_screen/profile_screen.dart';

class DashBoardController extends GetxController {
  // int pageIndex = 0;


  RxList pages = [
    const HomeScreen(),
    const PmsStatusScreen(),
    const ProfileScreen(),
    const ProfileScreen(),
  ].obs;

  RxInt pageIndex = 0.obs;
  onTapBot(int index) {
    if (index == 2) {}
    if (index == 1) {}
    if (index == 3) {
      // Get.put(NotificationController());
    }
    pageIndex.value = index;
  }

  void onTapFlatButton() {

    // Get.to(() => const NewOrReadScreen());
  }
}
