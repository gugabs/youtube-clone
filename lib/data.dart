class User {
  final String username;
  final String profileImageUrl;
  final String subscribers;

  const User({
    required this.username,
    required this.profileImageUrl,
    required this.subscribers,
  });
}

const User cazeTV = User(
  username: 'Cazé TV',
  profileImageUrl: 'assets/avatars/caze-tv.jpg',
  subscribers: '11,2 mi',
);

const User ge = User(
  username: 'ge',
  profileImageUrl: 'assets/avatars/ge.jpg',
  subscribers: '4,21 mi',
);

const User f1 = User(
  username: 'FORMULA 1',
  profileImageUrl: 'assets/avatars/f1.jpg',
  subscribers: '9,87 mi',
);

class Video {
  final String id;
  final User author;
  final String title;
  final String thumbnailUrl;
  final String duration;
  final String publishedAt;
  final String viewCount;

  const Video({
    required this.id,
    required this.author,
    required this.title,
    required this.thumbnailUrl,
    required this.duration,
    required this.publishedAt,
    required this.viewCount,
  });
}

final List<Video> videos = [
  const Video(
    id: 'x606y4QWrxo',
    author: cazeTV,
    title: 'AO VIVO E COM IMAGENS: CORINTHIANS X SÃO PAULO | RODADA 4 | FASE DE GRUPOS | PAULISTÃO 2024',
    thumbnailUrl: 'assets/thumbnails/thumb-1.jpg',
    duration: '1:35:23',
    publishedAt: 'Ao vivo',
    viewCount: '1,1 mi',
  ),
  const Video(
    author: ge,
    id: 'vrPk6LB9bjo',
    title: 'BRASIL 2 X 1 EQUADOR | MELHORES MOMENTOS | PRÉ-OLÍMPICO SUL-AMERICANO MASCULINO 2024',
    thumbnailUrl: 'assets/thumbnails/thumb-2.jpg',
    duration: '2:51',
    publishedAt: 'há 1 dia',
    viewCount: '662.345',
  ),
  const Video(
    id: 'ilX5hnH8XoI',
    author: f1,
    title: 'Race Highlights | 2023 Sao Paulo Grand Prix',
    thumbnailUrl: 'assets/thumbnails/thumb-3.jpg',
    duration: '08:05',
    publishedAt: 'há 2 meses',
    viewCount: '5,1 mi',
  ),
];