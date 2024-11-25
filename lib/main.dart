import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_capture/main_page.dart';
import 'package:green_capture/views/green_capture/add_image_page.dart';
import 'package:green_capture/views/green_capture/edit_image_detail_screen.dart';
import 'package:green_capture/views/green_capture/green_capture_page.dart';
import 'package:green_capture/views/green_capture/image_management_screen.dart';
import 'package:green_capture/views/green_capture/image_view_screen.dart';
import 'package:green_capture/theme.dart';
import 'package:green_capture/utils/init.dart';
import 'package:green_capture/views/home_page.dart';
import 'package:green_capture/views/smart_farm/picture_page.dart';
import 'package:green_capture/views/smart_farm/start_page.dart';

void main() async {
  await init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeApp.themeData(),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      getPages: [
        GetPage(
          name: "/",
          // page: () => const HomeScreen(),
          page: () => const StartPage(),
        ),
        GetPage(
            name: "/picture",
            page: () => const PicturePage(),
            transition: Transition.noTransition),
        // GetPage(
        //   name: "/take_picture",
        //   page: () => const TakePictureScreen(),
        //   binding: CameraBindings(),
        //   transition: Transition.noTransition,
        // ),
        GetPage(name: '/main', page: () => const MainPage()),
        GetPage(name: '/home', page: () => const HomePage()),
        GetPage(name: '/green_capture', page: () => const GreenCapturePage()),
        GetPage(
          name: "/add-image",
          page: () => const AddImageScreen(),
        ),
        GetPage(
          name: "/image-management",
          page: () => const ImageManagementScreen(),
        ),
        GetPage(
          name: "/image-view",
          page: () => const ImageViewScreen(),
        ),
        GetPage(
          name: "/edit-image-detail",
          page: () => const EditImageDetailScreen(),
        ),
      ],
    );
  }
}
