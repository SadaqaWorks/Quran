
[![codebeat badge](https://codebeat.co/badges/65010906-564f-48c9-aadd-bf9c9ee1d4b3)](https://codebeat.co/projects/github-com-sadaqaworks-quran-master)
[![Codemagic build status](https://api.codemagic.io/apps/5e1c37ea48f5bc38b74143ab/5e1c37ea48f5bc38b74143aa/status_badge.svg)](https://codemagic.io/apps/5e1c37ea48f5bc38b74143ab/5e1c37ea48f5bc38b74143aa/latest_build)


# Quran Flutter

Quran made with Flutter.
 
All kinds of PR, suggestion and contributions are welcome, let's do this for sake of Allah as Sadaqah Jaria. If you want to contribute, fill [it up](https://sadmansamee.typeform.com/to/Df9lQG), have a look on [mock up](https://whimsical.com/XJEbU6ATxdqgVCbmKyByNG) then refer to [Trello board](https://trello.com/b/JKZ9ZyGI/quran) for planning and task list.

## TODO
* [ ] [Surah, Juzz, Pages list view to navigate](https://trello.com/c/pLUkCjKQ/18-surahjuzzpage-scrollable-slide-up-list-view)
* [ ] [Audio play system](https://trello.com/c/HIEQa7Eb/17-audio-play-from-various-reciter)
* [ ] [Translation system](https://trello.com/c/8RRezmUP/19-show-translation)
* [x] Show every page on Quran
* [x] Responsive for Phone, tablet, desktop.
* [x] A slider to navigate through pages

 
## Current implementation 
 ![](docs/screenshot/quran.gif)

 
## Why this project is important? 

[Ayat](https://quran.ksu.edu.sa/ayat/?l=en) is a Quran project from King Saud University, it has the following platforms: iOS, Android, Mac, Windows, Web, Linux. so users have a similar experience on all the platforms, but unfortunately, this project is deprecated.

The reason that is important 

1. Those who memorize Quran wants to have similar actual Mushaf experience, as an example [Quran for Android](https://play.google.com/store/apps/details?id=com.quran.labs.androidquran&hl=en) or [Quran for iOS](https://apps.apple.com/us/app/quran-by-quran-com-%D9%82%D8%B1%D8%A2%D9%86/id1118663303) have different highly modified Quran image than actual Madina mushaf which is crucial for a memorizer to have similar look and feel for visual memorization purpose, or other alternatives aren't available across the platforms. 
2. A person might want to switch platforms and revise their Quran reading on another platform.
3. All the current projects are different in their own ways and have different codebase thus keep maintaining and adding new features is difficult.
4. After deprecating of Ayat there is no similar solution that works well on all the platforms with similar experience.
5. It will always be free and open source and never intented for monetization or anything.


My proposal: Develop a Quran project with [Flutter](https://flutter.dev/), with Flutter it is possible to have a single codebase for all the platforms with similar experience while having single Codebase will make it easier to maintain and keep developing. I'm looking for more contributors.  

## Contribution Guide lines

* Go to [Trello board](https://trello.com/b/JKZ9ZyGI/quran) and have a look on tasks list
* Assign youself a task that you think are appropiate to do
* Clone this repo and create branch from **dev** branch and branch name should be same as task name/ID.
* Formate your code with any tools from [here](https://flutter.dev/docs/development/tools/formatting).
* Run on project folder ```flutter analyze``` and fix any issues if found.
* After completing task create pull request to merge with ***dev*** branch.
* Slide respective ticket to **In Review** list in Trello.
* If you have anything in mind that might be developed add in **Would Love To Do** lists.


## Coding guide lines

* This project uses [Flutter Bloc](https://bloclibrary.dev) as state management, every single feature must follow this state managemnt.
* [SOLID principals](https://medium.com/flutter-community/s-o-l-i-d-the-first-5-principles-of-object-oriented-design-with-dart-f31d62135b7e) must not be broken.
* For project and coding structure, styles first go through this repo's codes first, your coding styles and structure has to be matched with this project's coding styles and structures.
* Any kind of anti-patterns must not be implemented or design pattern must not be broken.

## Database plan
 We will use Hive, as it's a lot faster than SQLite, 
 
 Page: For page we will make json by quering from ayah_info database and make array of quran page object where everything related to page will be stored, verse start, end, sura, verse mapping, glyphs
 Sura List: We will make one json with arabic title and translation object {text,iso: (bn/en/gn)}, 
 Translation: Every db will be different box
 Word by word: Every db will be different box
 Arabic: A box for arabic
 Tajweed: A box for tajweed
 Resource: A resource list with Sura, page, word by word, translation will be specified and provides if it's mandatory or not, version, downloaded or not, selected or not, obtained from local and updated from API as well and cache it on ResourceBox, 
 Settings: A box to handle user choice, settings etc
 User: Bookmark, preference

 ## test
 
