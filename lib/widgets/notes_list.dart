import 'package:flutter/material.dart';
import 'package:notes_list/widgets/action_button.dart';
import 'package:notes_list/widgets/notes_description.dart';
import 'package:notes_list/widgets/notes_tag.dart';

class NotesList extends StatefulWidget {
  NotesList({
    super.key,
    required this.emoji,
    required this.title,
    required this.description,
  });

  final String emoji;
  final String title;
  final String description;

  @override
  State<NotesList> createState() => _NotesListState();
}

class _NotesListState extends State<NotesList> {
  bool showButton = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Column(
        children: [
          MouseRegion(
            onEnter: (_) => setState(() {
              showButton = true;
            }),
            onExit: (_) => setState(() {
              showButton = false;
            }),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(widget.emoji),
                Expanded(
                  flex: 3,
                  child: NotesDescription(
                    title: widget.title,
                    description: widget.description,
                  ),
                ),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 250),
                  child: showButton
                      ? Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ActionButton(Colors.blue, Icons.mode_edit_outline,
                                "Edit Note"),
                            SizedBox(width: 10),
                            ActionButton(
                                Colors.grey, Icons.delete, "Delete Note"),
                          ],
                        )
                      : Text(
                          "19 Feb 2023, 8:00 PM",
                          style: TextStyle(
                            color: Color(0xFF2A394E),
                            fontSize: 13,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              children: [
                NotesTag('Union Bank'),
                NotesTag('New Strategy'),
                NotesTag('Tecnique new'),
              ],
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}

class NotesListWidget extends StatelessWidget {
  const NotesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <NotesList>[
          NotesList(
            description:
                'At a bare minimum, your trading journal should include your daily',
            emoji: 'images/emoji.png',
            title: 'The Trading Strategy for Intraday as well as the rise',
          ),
          NotesList(
            description:
                'At a bare minimum, your trading journal should include your daily',
            emoji: 'images/emoji.png',
            title: 'The Trading Strategy for Intraday as well as the rise',
          ),
          NotesList(
            description:
                'At a bare minimum, your trading journal should include your daily',
            emoji: 'images/emoji.png',
            title: 'The Trading Strategy for Intraday as well as the rise',
          ),
        ],
      ),
    );
  }
}
