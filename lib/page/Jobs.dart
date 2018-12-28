import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import '../Model/JobListshowItem.dart';
class JobList extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new JobsListState();

  }

}
class JobsListState extends State<JobList> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getuser();
  }

  Future<String>getuser() async
  {
    var url ='https://jsonplaceholder.typicode.com/todos/1';
     var response =await http.get(url);
     print(response.statusCode.toString());
     return 'gg';
   
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Text('cffff');
  }
}


  