import 'package:flutter/material.dart';
import 'package:music_player_sample/src/models/singers_model.dart';
import 'package:music_player_sample/src/models/song_model.dart';
import 'package:music_player_sample/src/widgets/drawer_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: DrawerList(),
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        actions: <Widget>[
          Icon(
            Icons.notifications_none,
            size: 30,
          )
        ],
        backgroundColor: Color(0xFF1F1F1F),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Color(0xFF1F1F1F),
            height: 70.0,
            child: PageView.builder(
                controller:
                    PageController(viewportFraction: 0.2, initialPage: 1),
                itemCount: singers.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: <Widget>[
                      Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 26.0,
                            backgroundColor: Colors.deepPurple,
                          ),
                          CircleAvatar(
                            radius: 25.0,
                            backgroundImage: AssetImage(singers[index].image),
                          ),
                        ],
                      ),
                    ],
                  );
                }),
          ),
          SizedBox(
            height: 20.0,
          ),
          _barKindMusic(),
          _pageSongs(context),
          SizedBox(
            height: 10.0,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Top Weekly',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          _topSongsList(context),
          _bottomNavigationBar()
        ],
      ),
    );
  }

  Widget _topSongsList(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      child: ListView.builder(
          itemCount: songs.length,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.transparent,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Text('${index + 1}',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        songs[index].image,
                        height: size.width / 8,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            songs[index].title,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 11.0,
                                fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            songs[index].singer,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 8.0,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 16,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(
                        Icons.more_vert,
                        color: Colors.white,
                        size: 16,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }

  Widget _barKindMusic() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'New releases',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0),
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              width: 40,
              height: 2,
              color: Colors.deepPurple,
            ),
          ],
        ),
        Text('Albums',
            style: TextStyle(
                color: Color(0xFF383838),
                fontWeight: FontWeight.bold,
                fontSize: 18.0)),
        Text('Playlists',
            style: TextStyle(
                color: Color(0xFF383838),
                fontWeight: FontWeight.bold,
                fontSize: 18.0))
      ],
    );
  }

  _pageSongs(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.width / 3 * 1.4,
      child: PageView.builder(
        pageSnapping: false,
        controller: PageController(viewportFraction: 0.4, initialPage: 1),
        itemCount: songs.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(10.0),
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image.asset(
                    songs[index].image,
                    height: size.width / 3,
                    width: size.width / 3,
                  ),
                ),
                Text(
                  songs[index].title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  songs[index].singer,
                  style: TextStyle(
                      color: Color(0xFF383838),
                      fontSize: 10.0,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  _bottomNavigationBar() {
    return Container(
      height: kToolbarHeight,
      decoration: BoxDecoration(
        color: Color(0xFF1F1F1F),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          Icon(
            Icons.menu,
            color: Colors.white,
          ),
          Icon(
            Icons.cloud_download,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
