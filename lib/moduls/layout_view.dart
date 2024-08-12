import 'package:flutter/material.dart';
import 'package:todo_app/core/app_color.dart';
import 'package:todo_app/moduls/settings/settings_view.dart';
import 'package:todo_app/moduls/tasks/Tasks_View.dart';

class LayoutView extends StatefulWidget {
LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
int selectedindex=0;

List<Widget>screens=[
  TasksView(),SettingsView(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
        body: screens[selectedindex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        elevation: 2,
        backgroundColor: AppColor.whitecolor,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),

      ),
        onPressed: (){},

        child:CircleAvatar(
          backgroundColor: AppColor.primarycolor,
          child: Icon(Icons.add,
          color: AppColor.whitecolor,
          size: 30,),
          radius: 25,
        ) ,),

      bottomNavigationBar:
      BottomAppBar(
        height: 93,
        shape: CircularNotchedRectangle(),
        notchMargin: 15,
        color: AppColor.whitecolor,
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          currentIndex:selectedindex ,
            onTap: (value){
             setState(() {
               selectedindex=value;
             });
            },
            items: [
          BottomNavigationBarItem(icon:Icon(Icons.list),
              label: 'Tasks'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),
              label:'Settings'),

        ]),
      )
    );
  }
}
