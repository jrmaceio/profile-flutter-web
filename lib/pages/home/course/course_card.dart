import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kleberandrade/helpers/image_helper.dart';
import 'package:kleberandrade/helpers/url_helper.dart';
import 'package:kleberandrade/models/course.dart';

class CourseCard extends StatelessWidget {
  final Course course;

  const CourseCard({
    Key key,
    this.course,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      color: Colors.white,
      child: Container(
        height: 320.0,
        width: 320.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 180.0,
              child: ImageHelper.fromNetwork(course.picture),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                course.title ?? 'Sem título',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).primaryColor,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 8.0),
                child: Text(
                  course.description ?? 'Sem descrição',
                  maxLines: 5,
                  style: TextStyle(
                    fontSize: 16.0,
                    height: 1.5,
                    fontWeight: FontWeight.w300,
                    color: Theme.of(context).primaryColor,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 8.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _buildIconButton(
                    context,
                    FontAwesomeIcons.github,
                    course.github ?? '',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildIconButton(BuildContext context, IconData icon, String url) {
    return Visibility(
      visible: url != null && url.length > 0,
      child: IconButton(
        icon: Icon(
          icon,
          color: Theme.of(context).primaryColor,
        ),
        onPressed: () {
          UrlHelper.open(url);
        },
      ),
    );
  }
}
