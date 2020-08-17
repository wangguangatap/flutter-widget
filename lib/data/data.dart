class Post {
  final String name;
  final String author;
  final String url;

  Post({this.name, this.author, this.url});
}

final List<Post> posts = [
  Post(
      name: '八佰',
      author: '管虎',
      url: 'http://img5.mtime.cn/mg/2020/08/02/162809.52117921_270X405X4.jpg'),
  Post(
      name: '我在时间尽头等你',
      author: '姚婷婷',
      url: 'http://img5.mtime.cn/mg/2020/08/06/102645.13161739_270X405X4.jpg'),
  Post(
      name: '荞麦疯长',
      author: '徐展雄',
      url: 'http://img5.mtime.cn/mg/2020/08/10/170434.67507556_270X405X4.jpg'),
  Post(
      name: '信条',
      author: '克里斯托弗·诺兰',
      url: 'http://img5.mtime.cn/mg/2020/08/06/195933.83326922_270X405X4.jpg'),
  Post(
      name: '通往春天的列车',
      author: '李骥',
      url: 'http://img5.mtime.cn/mg/2020/08/12/164251.22822889_270X405X4.jpg')
];
