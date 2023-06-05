import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:vpn_ui_demo/Fast_fox/app_drawer.dart';
import 'package:vpn_ui_demo/Fast_fox/fasfox_cnt.dart';
import 'package:vpn_ui_demo/constant.dart';

class FasFox extends StatefulWidget {
  const FasFox({super.key});

  @override
  State<FasFox> createState() => _FasFoxState();
}

class _FasFoxState extends State<FasFox> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final cnt = Get.put(FasFoxCnt());
    return Obx(
      () => Scaffold(
        key: _scaffoldKey,
        backgroundColor: const Color.fromARGB(255, 237, 241, 252),
        drawer: const AppDrawer(),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Lottie.asset(
                height: MediaQuery.of(context).size.height / 1.5,
                // width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
                'assets/loti.json'),
            Column(children: [
              Container(
                alignment: Alignment.bottomCenter,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                  border: Border.all(
                    color:
                        cnt.isDark.value ? appBackgroundColor : appPrimaryColor,
                    width: 2,
                    strokeAlign: BorderSide.strokeAlignOutside,
                  ),
                  color: cnt.isDark.value ? appBlackColor : appWhiteColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              _scaffoldKey.currentState?.openDrawer();
                            },
                            icon: Icon(
                              color: Colors.grey[600],
                              Icons.storage_outlined,
                              size: 40,
                            )),
                        Text(
                          'FasFox',
                          style: GoogleFonts.syneMono(
                              fontSize: 30,
                              color: cnt.isDark.value
                                  ? appWhiteColor
                                  : appPrimaryColor),
                        ),
                        IconButton(
                            onPressed: () {
                              // showModalBottomSheet(
                              //   context: context,
                              //   showDragHandle: true,
                              //   // barrierColor: Colors.amber,
                              //   constraints: BoxConstraints(
                              //       maxHeight:
                              //           MediaQuery.of(context).size.height *
                              //               0.8,
                              //       maxWidth:
                              //           MediaQuery.of(context).size.width * 0.9,
                              //       minWidth:
                              //           MediaQuery.of(context).size.width *
                              //               0.9),

                              //   shape: const RoundedRectangleBorder(
                              //     borderRadius: BorderRadius.only(
                              //         topLeft: Radius.circular(30),
                              //         topRight: Radius.circular(30)),
                              //   ),
                              //   isScrollControlled: true,
                              //   enableDrag: true,
                              //   builder: (context) => DraggableScrollableSheet(
                              //     initialChildSize: 0.5,
                              //     expand: false,
                              //     maxChildSize: 1,
                              //     minChildSize: 0.25,
                              //     builder: (BuildContext context,
                              //         ScrollController scrollController) {
                              //       return StreamBuilder<Object>(
                              //           stream: null,
                              //           builder: (context, snapshot) {
                              //             return SingleChildScrollView(
                              //               controller: scrollController,
                              //               child: Column(
                              //                 children: [
                              //                   ElevatedButton(
                              //                     child: const Text(
                              //                         'Close BottomSheet'),
                              //                     onPressed: () =>
                              //                         Navigator.pop(context),
                              //                   ),
                              //                 ],
                              //               ),
                              //             );
                              //           });
                              //     },
                              //   ),
                              // );

                              showCountryPicker(
                                useSafeArea: true,
                                context: context,
                                onSelect: (value) {
                                  debugPrint(value.name.toString());
                                },
                                countryListTheme: CountryListThemeData(
                                  flagSize: 25,
                                  backgroundColor: cnt.isDark.value
                                      ? appBlackColor
                                      : appWhiteColor,
                                  textStyle: TextStyle(
                                      fontSize: 16,
                                      color: cnt.isDark.value
                                          ? appWhiteColor
                                          : Colors.blueGrey),
                                  bottomSheetHeight: Get.height * 0.8,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(30.0),
                                    topRight: Radius.circular(30.0),
                                  ),
                                  inputDecoration: InputDecoration(
                                    labelText: 'Search',
                                    hintText: 'Start typing to search country',
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color: cnt.isDark.value
                                          ? appWhiteColor
                                          : null,
                                    ),
                                    labelStyle: TextStyle(
                                      color: cnt.isDark.value
                                          ? appWhiteColor
                                          : null,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: cnt.isDark.value
                                            ? appWhiteColor
                                            : Colors.blue,
                                      ),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: const Color(0xFF8C98A8)
                                            .withOpacity(0.2),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                            icon: Icon(
                              color: Colors.grey[600],
                              Icons.location_on,
                              size: 40,
                            )),
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.circle,
                        size: 15,
                        color: Color.fromARGB(255, 9, 71, 185),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('You are not connected')
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  )
                ]),
              ),

              // incomplete work
              Expanded(
                  child: Container(
                alignment: Alignment.bottomCenter,

                // decoration: const BoxDecoration(
                //     image:
                //         DecorationImage(image: AssetImage('assets/world.png'))),
                // color: const Color.fromARGB(255, 194, 213, 228),
              )),
              // Expanded(
              //   child: SizedBox(
              //     height: 200,
              //     width: 200,
              //     child: GestureDetector(
              //       onTap: () {},
              //       child: const Planet(
              //         key: Key('Planet2'),
              //         interative: false,
              //       ),
              //     ),
              //   ),
              // ),
              
              Container(
                alignment: Alignment.bottomCenter,
                height: MediaQuery.of(context).size.height * 0.2,
                // width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: cnt.isDark.value ? appWhiteColor : appPrimaryColor,
                    width: 2,
                    strokeAlign: BorderSide.strokeAlignOutside,
                  ),
                  color: cnt.isDark.value ? appBlackColor : appWhiteColor,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Connect fast network: ',
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            'France',
                            style: TextStyle(fontSize: 14, color: Colors.green),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.08,
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(20),
                        // ),
                        child: ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30))),
                                backgroundColor: const MaterialStatePropertyAll(
                                    Color.fromARGB(255, 9, 71, 185))),
                            onPressed: () {},
                            child: const Text(
                              'Connect',
                              style: TextStyle(fontSize: 25),
                            )),
                      )
                    ]),
              )
            ]),
          ],
        ),
      ),
    );
  }
}

class Planet extends StatefulWidget {
  const Planet({Key? key, required this.interative}) : super(key: key);
  final bool interative;
  @override
  State<Planet> createState() => _PlanetState();
}

class _PlanetState extends State<Planet> with SingleTickerProviderStateMixin {
  late Scene _scene;

  Object? _earth;

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        duration: const Duration(milliseconds: 30000), vsync: this)
      ..addListener(() {
        if (!widget.interative) {
          if (_earth != null) {
            _earth!.rotation.x = _controller.value * -360;
            _earth!.updateTransform();
            _scene.update();
          }
        }
      })
      ..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  void _onSceneCreated(Scene scene) {
    _scene = scene;
    if (widget.interative) {
      _scene.camera.position.z = 20;
    } else {
      _scene.camera.position.z = 13;
    }

    // model from https://free3d.com/3d-model/planet-earth-99065.html
    _earth = Object(
        // name: 'earth',
        scale: Vector3(10.0, 10.0, 10.0),
        backfaceCulling: false,
        isAsset: true,
        fileName: 'assets/earth/earth.obj');

    _scene.world.add(_earth!);

    // texture from https://www.solarsystemscope.com/textures/
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: TweenAnimationBuilder<double>(
          duration: const Duration(seconds: 0),
          curve: Curves.easeIn,
          tween: Tween(begin: 0, end: 1),
          builder: (context, animation, child) {
            return Opacity(
              opacity: animation,
              child: Cube(
                onObjectCreated: (object) {},
                onSceneCreated: _onSceneCreated,
                interactive: widget.interative,
              ),
            );
          }),
    );
  }
}
