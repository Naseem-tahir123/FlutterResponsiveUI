// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_task_1/responsive.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return !Responsive.isMoble(context) && !Responsive.isTablet(context)
        ? Container(
            width: MediaQuery.of(context).size.width * 0.4,
            color: Colors.black,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, right: 10),
                child: Column(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.maps_home_work_sharp,
                                color: Colors.white70,
                              ),
                              Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.white70,
                              ),
                              Icon(
                                CupertinoIcons.person_add,
                                color: Colors.white70,
                              ),
                              Icon(
                                CupertinoIcons.folder,
                                color: Colors.white70,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1639149888905-fb39731f2e6c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjZ8fHVzZXIlMjBwcm9maWxlfGVufDB8MXwwfHx8MA%3D%3D',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          )
        : Drawer(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            child: Wrap(
              runSpacing: 10,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20.0),
                    child: Center(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: Image.network(
                            'https://images.unsplash.com/photo-1639149888905-fb39731f2e6c?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjZ8fHVzZXIlMjBwcm9maWxlfGVufDB8MXwwfHx8MA%3D%3D',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    )),
                Divider(
                  indent: 10.0,
                  endIndent: 10.0,
                  thickness: 1.5,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ListTile(
                    titleAlignment: ListTileTitleAlignment.center,
                    title: Text(
                      "Location",
                      style: TextStyle(color: Colors.white70),
                    ),
                    leading: Icon(
                      Icons.maps_home_work_sharp,
                      color: Colors.white70,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward,
                      color: Colors.white70,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ListTile(
                    titleAlignment: ListTileTitleAlignment.center,
                    title: Text(
                      "Favourite",
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white70,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward,
                      color: Colors.white70,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ListTile(
                    titleAlignment: ListTileTitleAlignment.center,
                    title: Text(
                      "Add",
                      style: TextStyle(color: Colors.white70),
                    ),
                    leading: Icon(
                      CupertinoIcons.person_add,
                      color: Colors.white70,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward,
                      color: Colors.white70,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ListTile(
                    titleAlignment: ListTileTitleAlignment.center,
                    title: Text(
                      "Files",
                      style: TextStyle(color: Colors.white70),
                    ),
                    leading: Icon(
                      CupertinoIcons.person_add,
                      color: Colors.white70,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.grey,
          );
  }
}
