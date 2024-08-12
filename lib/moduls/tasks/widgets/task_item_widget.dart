import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/core/app_color.dart';

class TaskItemWidget extends StatelessWidget {
 TaskItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8,vertical: 12),
      decoration: BoxDecoration(
        color: AppColor.whitecolor,
          borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        child: ListTile(
          leading: Container(
            height: 80,
            width: 6,
            decoration: BoxDecoration(
              color: AppColor.primarycolor
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Play Basket Ball',
                  style:Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppColor.primarycolor,
                    fontSize: 18
                  ) ),
              Row(
                children: [
                  Icon(Icons.alarm,size: 18,color: AppColor.primarycolor,),
                  SizedBox(width: 5,),
                  Text('10:30',
                      style:Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColor.primarycolor,
                          fontSize: 12
                      ) ),

                ],
              )
            ],

          ),
          trailing: Container(
            height: 35,
            width: 75,
            decoration: BoxDecoration(
              color: AppColor.primarycolor,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Icon(Icons.check,color: AppColor.whitecolor,size: 30,),
          ),
        ),
      ),
    );
  }
}
