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
  Future<JobListShowItem> joblistshowite;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getuser();
  }

  Future<JobListShowItem> getuser() async
  {
    var url = 'https://randomuser.me/api/?page=3&results=10&seed=abc';
    var response = await http.get(
        Uri.encodeFull(url), headers: {"Accept": "application/json"});
        return JobListShowItem.fromJson(json.decode(response.body));
   
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new FutureBuilder<JobListShowItem>(
      future: joblistshowite,
      builder:(context,snapshat){
        if(snapshat.hasError)
        {

        }
        if(snapshat.hasData)
        {
          return new Text(snapshat.data.Lastname.toString());
        }
    },);
  }
}


  