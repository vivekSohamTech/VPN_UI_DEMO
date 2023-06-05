import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuiBuiVPN extends StatelessWidget {
  const BuiBuiVPN({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(66, 87, 87, 87),
      body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.16,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.12,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white.withOpacity(0.3),
                            ),
                            child: IconButton(
                                onPressed: () {
                                  showDialog(
                                    barrierDismissible: false,
                                    barrierColor: Colors.black.withOpacity(0.9),
                                    context: context,
                                    builder: (context) => Material(
                                      type: MaterialType.circle,
                                      color: Colors.transparent,
                                      child: Center(
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                              sigmaX: 1, sigmaY: 1),
                                          child: Container(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    appContainer(
                                                        press: () {},
                                                        context: context,
                                                        icon: Icons.person,
                                                        title: 'Account',
                                                        color: Colors.green),
                                                    appContainer(
                                                        press: () {},
                                                        context: context,
                                                        icon: Icons
                                                            .devices_rounded,
                                                        title: 'Device',
                                                        color: Colors.yellow),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    appContainer(
                                                      press: () {},
                                                      context: context,
                                                      icon: Icons.mail_rounded,
                                                      title: 'Ticket',
                                                      color:
                                                          const Color.fromARGB(
                                                        255,
                                                        63,
                                                        171,
                                                        228,
                                                      ),
                                                    ),
                                                    appContainer(
                                                        press: () {},
                                                        context: context,
                                                        icon: Icons.settings,
                                                        title: 'Settings',
                                                        color: Colors.green),
                                                  ],
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                appContainer(
                                                  press: () {
                                                    Navigator.pop(context);
                                                  },
                                                  context: context,
                                                  icon: Icons.share,
                                                  title: 'Share App',
                                                  color: Colors.green,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.1,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.88,
                                                ),
                                                const SizedBox(
                                                  height: 100,
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    debugPrint('===> back');
                                                    Navigator.pop(context);
                                                  },
                                                  child: Icon(
                                                    Icons.cancel,
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    size: 30,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                icon: const Icon(
                                  Icons.widgets,
                                  size: 30,
                                )),
                          ),
                          Text(
                            'buibuiVPN',
                            style: GoogleFonts.sourceSansPro(
                                fontStyle: FontStyle.italic,
                                fontSize: 30,
                                color: const Color.fromARGB(255, 183, 25, 7)),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.12,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white.withOpacity(0.3),
                            ),
                            child: InkWell(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    'assets/telegram.png',
                                  ),
                                )),
                          )
                        ]),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 239, 191, 48),
                          borderRadius: BorderRadius.circular(20)),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: MediaQuery.of(context).size.height * 0.05,
                            child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.workspace_premium_sharp),
                                  Text('GO PREMIUM'),
                                  Icon(Icons.double_arrow)
                                ]),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ]),
    );
  }

  appContainer(
      {required BuildContext context,
      required IconData icon,
      required String title,
      required Color color,
      required Function() press,
      double? height,
      double? width}) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.1)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: press,
          child: SizedBox(
            height: height ?? MediaQuery.of(context).size.height * 0.18,
            width: width ?? MediaQuery.of(context).size.width * 0.4,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(
                icon,
                size: 30,
                color: color,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                title,
                style: const TextStyle(fontSize: 17, color: Colors.white),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
