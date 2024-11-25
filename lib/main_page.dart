import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_capture/controller/green_capture/home_controller.dart';
import 'package:green_capture/controller/green_capture/image_management_controller.dart';
import 'package:green_capture/controller/main_controller.dart';
import 'package:green_capture/utils/tool.dart';
import 'package:green_capture/widgets/dialog/dialog_filter.dart';
import 'package:green_capture/widgets/drawer.dart';
import 'package:green_capture/widgets/progress.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MainController());
    Get.put(HomeController());
    Get.put(ImageManagementController());
    ImageManagementController imageManagementController =
        Get.find<ImageManagementController>();
    MainController mainController = Get.find<MainController>();
    HomeController homeController = Get.find<HomeController>();

    return Obx(
      () {
        bool hasInternet = homeController.hasInternet.value;
        return Scaffold(
          appBar: AppBar(
            title: Text(mainController.titles[mainController.numPage.value]),
            backgroundColor: Tool.appBar_bg,
            foregroundColor: Tool.appBar_title,
            titleTextStyle: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Tool.appBar_title,
            ),
            actions: mainController.numPage.value == 2
                ? [
                    Obx(() {
                      bool loadingMore = homeController.loadingMore.value;
                      return loadingMore
                          ? const CircularProgress()
                          : const SizedBox();
                    }),
                    IconButton(
                      onPressed: () async => dialogFilterImages(),
                      icon: const Icon(Icons.filter_alt_rounded),
                    ),
                    IconButton(
                      onPressed: () async => await homeController.reload(),
                      icon: const Icon(Icons.refresh_rounded),
                    ),
                  ]
                : mainController.numPage.value == 3
                    ? [
                        IconButton(
                          onPressed: () async =>
                              await imageManagementController.uploadAllImage(),
                          icon: const Icon(Icons.cloud_upload_rounded),
                        ),
                      ]
                    : [],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(hasInternet ? 0 : 20),
              child: hasInternet
                  ? const SizedBox()
                  : Container(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      width: Get.width,
                      color: Colors.orange.withOpacity(0.8),
                      child: const Center(
                        child: Text("Không có kết nối mạng"),
                      ),
                    ),
            ),
          ),
          body: mainController.pages[mainController.numPage.value],
          drawer: const MainDrawer(),
        );
      },
    );
  }
}
