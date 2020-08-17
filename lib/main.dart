import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'ui/butterfly.dart';
import 'ui/sspf.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) => Scaffold(
          backgroundColor: Colors.black,
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "images/front.jpg",
                  fit: BoxFit.cover,
                ),
                Text(
                  "Welcome to Raaga !",
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 25,
                  ),
                ),
                Text(
                  "Experience the inner you",
                  style: TextStyle(
                    color: Colors.cyan,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainPage()),
                    );
                  },
                  color: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.cyan,
                  ),
                )
              ],
            ),
          ),
        ),
        //body: ,
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) => Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: Image.asset('images/front.jpg'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () => {
                  print("Pressed Setting"),
                },
              ),
            ],
            title: Text(
              "Raaga",
            ),
          ),
          body: Container(
            width: double.infinity,
            margin: EdgeInsets.all(3.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                FlatButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MusicPlayer()),
                    ),
                  },
                  child: Card(
                    shadowColor: Colors.white,
                    child: Image.asset(
                      "images/logo.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MoviePlayer()),
                    ),
                  },
                  child: Card(
                    shadowColor: Colors.white,
                    child: Image.asset(
                      "images/video.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
AudioCache cache = AudioCache(fixedPlayer: audioPlayer);

pause() {
  audioPlayer.pause();
}

stop() {
  audioPlayer.stop();
}

music1() {
  print("Follow the Rules... - Laurin Hunter");
  cache.play(
    "Follow the Rules... - Laurin Hunter.mp3",
    stayAwake: true,
  );
}

music2() {
  print("Bizzair - Bougie (Official Music Video)");
  cache.play(
    "Bizzair - Bougie (Official Music Video).mp3",
    stayAwake: true,
  );
}

music3() {
  print("Lil Nas X - Old Town Road (Official Video) ft. Billy Ray Cyrus");
  cache.play(
    "Lil Nas X - Old Town Road (Official Video) ft. Billy Ray Cyrus.mp3",
    stayAwake: true,
  );
}

class MusicPlayer extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Enjoy music swimmingly..."),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () => {
                print("Pressed Setting"),
              },
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Card(
                shadowColor: Colors.white,
                color: Colors.black,
                child: Row(
                  children: <Widget>[
                    Image.network(
                      "https://images.shazam.com/coverart/t482138509-b1474755300_s400.jpg",
                      height: 100,
                      width: 100,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Follow the rules - Laurin Hunter",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(
                                  Icons.stop,
                                  size: 40,
                                  color: Colors.white,
                                ),
                                onPressed: stop),
                            IconButton(
                                icon: Icon(
                                  Icons.pause,
                                  size: 40,
                                  color: Colors.white,
                                ),
                                onPressed: pause),
                            IconButton(
                                icon: Icon(
                                  Icons.play_arrow,
                                  size: 40,
                                  color: Colors.white,
                                ),
                                onPressed: music1),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Card(
                shadowColor: Colors.white,
                color: Colors.black,
                child: Row(
                  children: <Widget>[
                    Image.network(
                      "https://i.scdn.co/image/124b245341f96d108f905253928b0fbc99d0ff0b",
                      height: 100,
                      width: 100,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Bougie - Bizzair",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(
                                  Icons.stop,
                                  size: 40,
                                  color: Colors.white,
                                ),
                                onPressed: stop),
                            IconButton(
                                icon: Icon(
                                  Icons.pause,
                                  size: 40,
                                  color: Colors.white,
                                ),
                                onPressed: pause),
                            IconButton(
                                icon: Icon(
                                  Icons.play_arrow,
                                  size: 40,
                                  color: Colors.white,
                                ),
                                onPressed: music2),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Card(
                shadowColor: Colors.white,
                color: Colors.black,
                child: Row(
                  children: <Widget>[
                    Image.network(
                      "https://www.mtvpersian.net/main/uploads/covers/main1/Lil%20Nas%20X%20%20-%20Old%20Town%20Road%20(ft%20Billy%20Ray%20Cyrus%20Remix)%20.jpg",
                      height: 100,
                      width: 100,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Old Town Road - Lil Nas X",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                                icon: Icon(
                                  Icons.stop,
                                  size: 40,
                                  color: Colors.white,
                                ),
                                onPressed: stop),
                            IconButton(
                                icon: Icon(
                                  Icons.pause,
                                  size: 40,
                                  color: Colors.white,
                                ),
                                onPressed: pause),
                            IconButton(
                                icon: Icon(
                                  Icons.play_arrow,
                                  size: 40,
                                  color: Colors.white,
                                ),
                                onPressed: music3),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MoviePlayer extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Enjoy movies swimmingly..."),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainPage()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () => {
                print("Pressed Setting"),
              },
            ),
          ],
        ),
        body: Container(
          //width: 100,
          //height: 300,
          child: Column(
            children: <Widget>[
              Card(
                shadowColor: Colors.white,
                child: Column(
                  children: <Widget>[
                    Image.network(
                      "https://www.logolynx.com/images/logolynx/81/81516559c8e5d8fae8a8b898dd00c8bd.jpeg",
                      height: 200,
                      width: double.infinity,
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ChewieDemo()),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Card(
                shadowColor: Colors.white,
                child: Column(
                  children: <Widget>[
                    Image.network(
                      "https://lh3.googleusercontent.com/proxy/dKWnTSPdWJSxDlZjjHtiT693e8AUcTZmGL7H_AVZ9ztOL6MMmwk5O4I1TWABkPLEpAvK-EQ2KQXZg_sHLKxECdmcx76jw03JxYWq4IjnS1Sd_Tevl-S9QzXZajs5pZozPMbYb6KXfgr4r853kF_RrhA_Br_LQf0V7i22A0YcgGIoHWU4fZ93nEOJX3-AKdW2IMCHNC_XHe25OHscPA4TewxB_Y7TtWC2SHw",
                      height: 200,
                      width: double.infinity,
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SSPFVideo()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
