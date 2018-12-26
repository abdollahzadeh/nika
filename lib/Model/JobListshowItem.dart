//Start Class JoblistShow

import 'dart:io';
class JobListShowItem
{
  final String Name;
  final String Lastname;
  JobListShowItem({this.Lastname,this.Name});
  factory JobListShowItem.fromJson(Map<String,dynamic> Json)
  {
         return JobListShowItem(
           Name:Json['name'],Lastname: Json['lastname']
         );

  }
}