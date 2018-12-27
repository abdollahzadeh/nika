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

  Future<List<JobListShowItem>> getuser() async
  {
    var url = 'https://randomuser.me/api/?page=3&results=10&seed=abc';
    var response = await http.get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
    var Jsondata = json.decode(response.body);
    List<JobListShowItem>_list=[];
    for(var u in Jsondata)
    {
      JobListShowItem j=JobListShowItem(u['title'],u['first']);
      _list.add(j);
    }
    return _list;
   
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new FutureBuilder(future: getuser(),
    builder:(BuildContext context,snapshat) 
    {
      return new ListView.builder(itemCount:snapshat.data.lenght,
      itemBuilder:(BuildContext context,int index){
         return new ListTile(title: new Text(snapshat.data[index].name));
      } ,
      );
    }
    );
  }
}


  