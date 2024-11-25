import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_capture/controller/main_controller.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(MainController());
    MainController mainController = Get.find<MainController>();

    return Drawer(
      child: Container(
        width: Get.width * 0.5,
        height: Get.height,
        decoration: const BoxDecoration(),
        child: Column(
          children: [
            Container(
              height: Get.height * 0.2,
              // width,
              decoration: const BoxDecoration(
                // color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('assets/images/logo_seacorp.png'),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      Get.back();
                      mainController.numPage.value = 0;
                      // Get.toNamed('/main');
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.camera),
                    title: const Text(
                      'Picture',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      Get.back();
                      mainController.numPage.value = 1;
                      // Get.toNamed('/home');
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.wifi),
                    title: const Text(
                      'Green picture',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () async {
                      Get.back();
                      mainController.numPage.value = 2;
                      // Get.toNamed('/home');
                      // await greenCaptureController.loadData();
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.image),
                    title: const Text(
                      'Quản lý hình ảnh',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      Get.back();
                      mainController.numPage.value = 3;
                      // Get.toNamed('/home');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
