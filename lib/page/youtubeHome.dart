import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_x/material_x.dart';
import 'package:youtube_clone_app/modules/ad_youtube.dart';
import 'package:youtube_clone_app/modules/horizontal_list.dart';
import 'package:youtube_clone_app/modules/row.dart';
import 'package:youtube_clone_app/modules/youtube_videos_list.dart';
//import 'package:youtube_clone_app/view/view.dart';
import '../modules/row.dart';

List data = [
  "Zeeshan",
  "Ali imam",
  "Arsalan",
  "Arman",
  "Arshad",
  "Arfat",
  "Aftab"
];

class YoutubeHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         mxListView.list([
      "Youtube".textMaterialColorBlack().mxAppBar(
          //automaticallyImplyLeading: false,
          elevation: 1.0,
          titleSpacing: 0.0,
          leading: FontAwesomeIcons.youtube.mxIcons(color: Colors.red),
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          actions: <Widget>[
            Icons.videocam
                .mxIcons(color: Colors.black)
                .mcIconButton(onPressed: () {}),
            Icons.search
                .mxIcons(color: Colors.black)
                .mcIconButton(onPressed: () {}),
            "Z"
                .text()
                .circleAvatar(backgroundColor: Colors.green[900], radius: 15)
                .mxrp(value: 10)
          ]).mxContainer(padding: EdgeInsets.zero, color: Colors.white),
      (context, index) {
        return data[index]
            .toString()
            .text()
            .mxlrp(l: 10, r: 10)
            .toCenter()
            .mxContainer(
                height: 20,
                padding: EdgeInsets.zero,
                rounded: 30,
                shadowColor: Color(0xFF9fbfdf),
                color: Colors.white,
                blurRadius: 1.0)
            .mxap(value: 5);
      }
          .mxListVB(itemCount: data.length, scrollDirection: Axis.horizontal)
          .mxap(value: 3)
          .mxContainer(
              color: Colors.white,
              shadowColor: Colors.grey,
              blurRadius: 100,
              width: mxwidth(context),
              height: 50.0,
              padding: EdgeInsets.zero)
          .toCenter(),
      AdsYoutube().mxContainer(color: Colors.white),
      Divider(
        height: 1,
      ),
      YoutubeHorizontalList().mxContainer(
          height: 160, padding: EdgeInsets.zero, color: Colors.white),
      YoutubeVideoList()
    ]).mxPullRefresh(
      onRefresh: () async {
        await Future.delayed(Duration(seconds: 3));
      },
    ),
    //YoutubeVideoView(),
      ],
    );
  }
}
