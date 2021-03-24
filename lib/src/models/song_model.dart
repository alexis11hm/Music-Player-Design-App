class Song {
  final String title;
  final String singer;
  final double duration;
  final String image;

  Song({this.title, this.singer, this.duration, this.image});
}

final songs = <Song>[
  Song(
      singer: 'Guns and Roses',
      title: 'album guns and roses the best',
      duration: 10000,
      image: 'assets/guns.jpg'),
  Song(
      singer: 'Metallica',
      title: 'album metalica',
      duration: 10000,
      image: 'assets/metallica.jpg'),
  Song(
      singer: 'Pink Floyd',
      title: 'album pink floyd',
      duration: 10000,
      image: 'assets/pink.jpg'),
  Song(
      singer: 'Queen One',
      title: 'Album queen one',
      duration: 10000.0,
      image: 'assets/queen.jpg'),
  Song(
      singer: 'Queen Two',
      title: 'Album queen Two',
      duration: 10000.0,
      image: 'assets/queen2.jpg'),
  Song(
      singer: 'Queen Three',
      title: 'Album queen three',
      duration: 10000.0,
      image: 'assets/queen3.jpg'),
  Song(
      singer: 'Queen Four',
      title: 'Album queen four',
      duration: 10000.0,
      image: 'assets/queen4.jpg'),
  Song(
      singer: 'Freddy Mercury',
      title: 'Album freddy mercury',
      duration: 10000.0,
      image: 'assets/freddy.jpg')
];
