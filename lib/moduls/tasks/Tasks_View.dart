import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/core/app_color.dart';
import 'package:todo_app/moduls/tasks/widgets/task_item_widget.dart';

class TasksView extends StatefulWidget {
  TasksView({super.key});

  @override
  State<TasksView> createState() => _TasksViewState();
}

class _TasksViewState extends State<TasksView> {
  final EasyInfiniteDateTimelineController _controller =
  EasyInfiniteDateTimelineController();
  var _focusDate=DateTime.now();
  @override
  Widget build(BuildContext context) {
    var mediaquary=MediaQuery.of(context);
    return Column(
      children: [
     Padding(
       padding: EdgeInsets.only(bottom: 50),
       child: Stack(
         clipBehavior: Clip.none,
         children: [
           Container(
             width: mediaquary.size.width,
             height: mediaquary.size.height *.22,
             color: AppColor.primarycolor,
             child: Padding(
               padding: EdgeInsets.only(
                 left: 20,
                 top: 60
               ),
               child: Text('To Do List',
               style: Theme.of(context).textTheme.bodySmall,),
             ),
           ),
           Positioned(
             top: 130,
             child: SizedBox(
               width: mediaquary.size.width,
               child: EasyInfiniteDateTimeLine(
                 controller: _controller,
                 firstDate: DateTime(2024),
                 focusDate: _focusDate,
                 lastDate: DateTime(2025, 12, 31),
                 onDateChange: (selectedDate) {
                   setState(() {
                     _focusDate = selectedDate;
                   });
                 },
                 dayProps: EasyDayProps(
                   activeDayStyle: DayStyle(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                        color: AppColor.whitecolor.withOpacity(.85),

                     ),
                     dayNumStyle:  TextStyle(
                       fontWeight: FontWeight.bold,
                       fontFamily: 'poppins',
                       fontSize: 15,
                       color: AppColor.primarycolor
                     ),
                     monthStrStyle:  TextStyle(
                       fontWeight: FontWeight.bold,
                       fontFamily: 'poppins',
                       fontSize: 15,
                       color: AppColor.primarycolor
                     ),dayStrStyle: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontFamily: 'poppins',
                       fontSize: 15,
                       color: AppColor.primarycolor
                   ),
                   ),
                   inactiveDayStyle: DayStyle(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: AppColor.whitecolor.withOpacity(.85),

                     ),
                     dayNumStyle:  TextStyle(
                         fontWeight: FontWeight.bold,
                         fontFamily: 'poppins',
                         fontSize: 15,
                         color: AppColor.blackcolor
                     ),
                     monthStrStyle:  TextStyle(
                         fontWeight: FontWeight.bold,
                         fontFamily: 'poppins',
                         fontSize: 15,
                         color: AppColor.blackcolor
                     ),dayStrStyle: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontFamily: 'poppins',
                       fontSize: 15,
                       color: AppColor.blackcolor
                   ),
                   ),
                 ),
                 showTimelineHeader: false,
               ),
             ),
           ),
         ],
       ),
       
     ),
        Expanded(
          child: ListView.builder(padding: EdgeInsets.zero,
            itemBuilder: (context,index)=>TaskItemWidget(),
            itemCount: 12,),
        )
      ],
    );
  }
}
