# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Note.destroy_all
Tag.destroy_all
NoteTag.destroy_all

# Users:
User.create(username: 'Admin')
User.create(username: 'RazaJafri')
User.create(username: 'DerickCastillo')
User.create(username: 'JosephCelep')
User.create(username: 'AdamShaffer')
User.create(username: 'DavidEber')
User.create(username: 'JasonMelton')
User.create(username: 'EllisAndrews')
User.create(username: 'EthanDavidson')
User.create(username: 'MikePottebaum')

# Notes:
Note.create(title: 'Create Flatnote Backend', content: 'rails new flatnote-backend --api -T --database=postgresql', user_id: 1)
Note.create(title: 'Create Flatnote Frontend', content: 'create-react-app flatnote-frontend', user_id: 1)
Note.create(title: 'Create fun seed file (again...)', content: 'Accidently deleted first project so this is a much smaller file unfortunately...', user_id: 1)
Note.create(title: 'Google CSS', content: 'Display cool views so users stay engaged', user_id: 1)
Note.create(title: 'Example Note 5', content: 'Hello World', user_id: 1)
Note.create(title: 'Coffee', content: 'Stand up exactly 4.47 seconds after getting into a topic saying I wait, let me grab my coffee', user_id: 2)
Note.create(title: 'Dominos', content: 'Classic Large Pepperoni with Coke', user_id: 3)
Note.create(title: 'Flatnote', content: 'Due Friday, May 8 2020 14:00:00', user_id: 4)
Note.create(title: 'Yoga', content: 'Medidate and relieve stress', user_id: 5)
Note.create(title: 'PokemonGo', content: 'Take advantage of Coronavirus situation', user_id: 6)
Note.create(title: 'Root Beer Friday', content: 'Contact Celebrities and set up weekly meetings', user_id: 7)
Note.create(title: 'Tiger King', content: 'That bitch Carol Baskin did it', user_id: 8)
Note.create(title: 'Photography', content: 'Go out and vibe with nature with a Camera', user_id: 9)
Note.create(title: 'Badgers and Gyms', content: 'Update game and push to market', user_id: 10)

# Tags:
Tag.create(content: 'Code')
Tag.create(content: 'Lifestyle')
Tag.create(content: 'Pets')
Tag.create(content: 'Work')
Tag.create(content: 'Entertainment')

# Note/Tag Relationship:
NoteTag.create(note_id: 1, tag_id: 1)
NoteTag.create(note_id: 1, tag_id: 4)
NoteTag.create(note_id: 2, tag_id: 1)
NoteTag.create(note_id: 2, tag_id: 4)
NoteTag.create(note_id: 3, tag_id: 1)
NoteTag.create(note_id: 3, tag_id: 4)
NoteTag.create(note_id: 4, tag_id: 1)
NoteTag.create(note_id: 4, tag_id: 4)
NoteTag.create(note_id: 5, tag_id: 1)
NoteTag.create(note_id: 5, tag_id: 2)
NoteTag.create(note_id: 5, tag_id: 3)
NoteTag.create(note_id: 5, tag_id: 4)
NoteTag.create(note_id: 5, tag_id: 5)
NoteTag.create(note_id: 6, tag_id: 2)
NoteTag.create(note_id: 7, tag_id: 2)
NoteTag.create(note_id: 8, tag_id: 4)
NoteTag.create(note_id: 9, tag_id: 5)
NoteTag.create(note_id: 10, tag_id: 5)
NoteTag.create(note_id: 11, tag_id: 5)
NoteTag.create(note_id: 12, tag_id: 5)
NoteTag.create(note_id: 13, tag_id: 5)
NoteTag.create(note_id: 14, tag_id: 5)
