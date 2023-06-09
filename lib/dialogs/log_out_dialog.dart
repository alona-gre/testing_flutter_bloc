import 'package:flutter/material.dart' show BuildContext;
import 'package:testingbloc_course/dialogs/generic_dialog.dart';

Future<bool> showLogOutDialog(BuildContext context) {
  return showGenericDialog<bool>(
    context: context,
    title: 'Log out',
    content:
        'Are you sure you want to  log out? You cannot undo this operation',
    optionsBuilder: () => {
      'Cancel': false,
      'Log out': true,
    },
  ).then((value) => value ?? false);
}
