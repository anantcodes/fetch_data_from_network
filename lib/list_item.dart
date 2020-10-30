import 'package:flutter/material.dart';


import 'news.dart';

class ListItem extends StatelessWidget {
  final Article article;

  ListItem(this.article);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          children: <Widget>[
            Container(
              height: 80,
              width: 100,
              child: Image.network(article.urlToImage),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        article.title,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        maxLines: 2,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        article.description,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        maxLines: 2,
                        style: TextStyle(fontStyle: FontStyle.italic, fontSize: 10),
                      )
                    ]),
              ),
            )
          ],
        ));
  }
}
