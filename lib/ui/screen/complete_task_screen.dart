import 'package:flutter/material.dart';




class CompleteTaskScreen extends StatefulWidget {
  const CompleteTaskScreen({super.key});

  @override
  State<CompleteTaskScreen> createState() => _CompleteTaskScreenState();
}

class _CompleteTaskScreenState extends State<CompleteTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
              child: ListView.separated(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    tileColor: Colors.white,
                    title: Text(
                      "Title will be here",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 8,
                      children: [
                        Text("Description of Task"),
                        Text(
                          "Date 9/9/2025",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Chip(
                              label: Text("Complete"),
                              backgroundColor: Colors.green,
                              labelStyle: TextStyle(color: Colors.white),
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24)),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.edit,
                                  color: Colors.redAccent,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.redAccent,
                                )),
                          ],
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 5,
                  );
                },
              )),
        ));
  }
}
