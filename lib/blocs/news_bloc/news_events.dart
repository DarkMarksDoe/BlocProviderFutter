import 'package:flutter/material.dart';

/// Load new
/// Delete New <=== position
///

class NewsEvents{}

class LoadEvent extends NewsEvents{}


class DeleteEvent extends NewsEvents{
  final int positon;

  DeleteEvent({Key key,@required this.positon});
}

