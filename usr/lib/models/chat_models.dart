import 'package:flutter/material.dart';

// --- Models ---

class User {
  final String id;
  final String name;
  final String imageUrl;

  User({
    required this.id,
    required this.name,
    required this.imageUrl,
  });
}

class Message {
  final String id;
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.id,
    required this.sender,
    required this.time,
    required this.text,
    this.isLiked = false,
    this.unread = false,
  });
}

class Chat {
  final String id;
  final User sender;
  final List<Message> messages;

  Chat({
    required this.id,
    required this.sender,
    required this.messages,
  });
}

// --- Mock Data ---

final User currentUser = User(
  id: '0',
  name: 'Current User',
  imageUrl: 'https://i.pravatar.cc/150?u=0',
);

final User greg = User(
  id: '1',
  name: 'Greg',
  imageUrl: 'https://i.pravatar.cc/150?u=1',
);
final User james = User(
  id: '2',
  name: 'James',
  imageUrl: 'https://i.pravatar.cc/150?u=2',
);
final User john = User(
  id: '3',
  name: 'John',
  imageUrl: 'https://i.pravatar.cc/150?u=3',
);
final User olivia = User(
  id: '4',
  name: 'Olivia',
  imageUrl: 'https://i.pravatar.cc/150?u=4',
);
final User sam = User(
  id: '5',
  name: 'Sam',
  imageUrl: 'https://i.pravatar.cc/150?u=5',
);

// EXAMPLE MESSAGES
final List<Message> messages1 = [
  Message(
    id: '1',
    sender: greg,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    id: '2',
    sender: currentUser,
    time: '4:30 PM',
    text: 'Just walked my doge. She was super happy. The weather is amazing!',
    isLiked: false,
    unread: true,
  ),
  Message(
    id: '3',
    sender: greg,
    time: '3:45 PM',
    text: 'How was the walk?',
    isLiked: false,
    unread: true,
  ),
  Message(
    id: '4',
    sender: currentUser,
    time: '3:15 PM',
    text: 'All good. You?',
    isLiked: true,
    unread: true,
  ),
];

final List<Message> messages2 = [
  Message(
    id: '1',
    sender: james,
    time: '12:30 PM',
    text: 'Are you available for a quick call?',
    isLiked: false,
    unread: false,
  ),
];

final List<Chat> chats = [
  Chat(id: '1', sender: greg, messages: messages1),
  Chat(id: '2', sender: james, messages: messages2),
  Chat(id: '3', sender: john, messages: []),
  Chat(id: '4', sender: olivia, messages: []),
  Chat(id: '5', sender: sam, messages: []),
];
