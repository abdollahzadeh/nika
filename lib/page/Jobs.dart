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
     List<JobListShowItem> item=[];
     final response = await http.get(Uri.decodeFull('https://jsonplaceholder.typicode.com/posts'));
            var data =json.decode(response.body);
            for(var i in data)
              {
                JobListShowItem y = new JobListShowItem(Lastname: i['title'],Name: i['body']);
                item.add(y);
              }
            return item;
          
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new FutureBuilder<List<JobListShowItem>>(future:getuser(),builder:(BuildContext context,snapshat){
      if(snapshat.data == null)
        {
          return new Container(child: new Text('fffff'),);
        }
       else {
        return new ListView.builder(itemCount:snapshat.data.length,
            itemBuilder: (BuildContext context, int index) {
              return new ListTile(title: new Text(snapshat.data[index].Lastname));
            });
      }
       
    });

  }
}


  //*return new ListView.builder(itemCount: Mylist.length,itemBuilder:(BuildContext context,int Pos){
     //  return new ListTile(title: new Text(Mylist[Pos]['body'].toString()));
    //});