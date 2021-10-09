import 'package:bottom_aplication/screens/home.dart';
import 'package:get/get.dart';

routes() => [
      GetPage(
        name: '/home',
        page: () => const HomePage(),
        transition: Transition.cupertino,
      ),
    ];
