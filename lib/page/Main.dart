import 'package:flutter/material.dart';
import './Jobs.dart';
class Activity extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ActivityState();
  }
}
class ActivityState extends State <Activity>
{

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(length: 5,initialIndex: 1, child:
        Scaffold(appBar:new AppBar(
          title: new Text('نیکا بروز',style: new TextStyle(fontFamily: 'Vazir'),),
          centerTitle: true,
          leading: new Icon(Icons.arrow_back),
          actions: <Widget>[
            new IconButton(icon:new Icon(Icons.menu), onPressed:(){Scaffold.of(context).openDrawer();})
          ],
          bottom: new TabBar(labelStyle: TextStyle(fontFamily: 'Vazir'),tabs:[
            new Tab(text: 'مشاغل',),
            new Tab(text: 'اگهی',),
            new Tab(text: 'مزایده ها',),
            new Tab(text: 'مناقصه ها',),
            new Tab(text: 'فروشگاه',),

          ],isScrollable: true,indicatorColor: Colors.blue,),
        ),

          endDrawer:new Drawer(
             child: new Text('fff')
        ), 
         body:
         TabBarView(children:<Widget> [
          new JobList(),
          new Text('oppp'),
          new Text('mnnmn'),
          new Text('099090'),
          new Text('ytty'),
        ]),)
    );
    
  }
}