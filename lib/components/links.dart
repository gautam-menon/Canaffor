import 'package:url_launcher/url_launcher.dart';

Launchurl() async {
  const url = 'http://www.canaffor.com/hr-consulting.html';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Facebook() async {
  const url = 'http://wwww.facebook.com';
  await launch(url);
}

Twitter() async {
  const url = 'http://www.twitter.com';
  await launch(url);
}

Instagram() async {
  const url = 'http://www.instagram.com';
  await launch(url);
}

Curriculum() async {
  const url = "https://forms.gle/SxwkrQpdHABYzY2E6";
  await launch(url);
}

Vacancy() async {
  const url =
      "https://www.indeedjobs.com/canaffor-corporation-c7a0e15/_hl/en_IN?cpref=JXWAtnzf3XWjLOi4YeVNLikN87qYWwuQd7OOnGAYHvg";
  await launch(url);
}
