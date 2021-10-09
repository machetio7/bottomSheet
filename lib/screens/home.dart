import 'package:bottom_aplication/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (home) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                title: const Text(
                  'Bottom Sheet',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                centerTitle: true,
                backgroundColor: Colors.black,
              ),
              body: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: TextField(
                        style: GoogleFonts.pacifico(fontSize: 25),
                        textAlign: TextAlign.center,
                        enabled: false,
                        controller: home.textController,
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: -1,
                      child: MaterialButton(
                        minWidth: context.width,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        )),
                        color: Colors.orange,
                        onPressed: () {
                          Get.bottomSheet(
                            Container(
                              height: 200,
                              decoration: const BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: const Icon(
                                      Icons.person_add,
                                      color: Colors.white,
                                    ),
                                    title: const Text('Juan Carlos',
                                        style: TextStyle(color: Colors.white)),
                                    subtitle: const Text('Ingeniero',
                                        style: TextStyle(color: Colors.white)),
                                    onTap: () {
                                      home.selectedName('Juan Carlos');
                                      Get.back();
                                    },
                                  ),
                                  ListTile(
                                    leading: const Icon(
                                      Icons.person_add,
                                      color: Colors.white,
                                    ),
                                    title: const Text('José Cruz',
                                        style: TextStyle(color: Colors.white)),
                                    subtitle: const Text(
                                        'Ingeniero de Desarrollo',
                                        style: TextStyle(color: Colors.white)),
                                    onTap: () {
                                      home.selectedName('José Cruz');
                                      Get.back();
                                    },
                                  ),
                                ],
                              ),
                            ),
                            isScrollControlled: true,
                          );
                        },
                        child: Column(
                          children: const [
                            Text('___', style: TextStyle(color: Colors.white)),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'SELECT NAME',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ),
          );
        });
  }
}
