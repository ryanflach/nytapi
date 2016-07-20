# Top Stories
Command-line application that pulls the top stories from the New York Times. Utilizes the TopStoriesV2 API from NYTimes.

## Usage
From the project folder, type `ruby top_stories.rb <topic>` in the command line, where `<topic>` is replaced by one of the following valid categories:
* home
* opinion
* world
* national
* politics
* upshot
* nyregion
* business
* technology
* science
* health
* sports
* arts
* books
* movies
* theater
* sundayreview
* fashion
* tmagazine
* food
* travel
* magazine
* realestate
* automobiles
* obituaries
* insider

The title, author, date published, abstract, and URL are printed out to the terminal for each story found in the desired topic.

Example:

```
ruby top_stories.rb world

Title: Gone: Global Warming Claims a Lake — and a Way of Life
	By SUSAN LEHMAN
Published: 2016-07-08T00:00:00-04:00
The Andes bureau chief, Nicholas Casey, and the staff photographer Josh Haner give listeners a behind-the-scenes account of their article about a vanished lake.
http://www.nytimes.com/2016/07/08/insider/gone-global-warming-claims-a-lake-and-a-way-of-life.html

Title: Voices From Europe’s Far Right
	By PALKO KARASZ
Published: 2016-07-13T00:00:00-04:00
Hundreds of readers from across the Continent responded to our call to share their experiences as supporters of far-right parties.
http://www.nytimes.com/2016/07/13/world/europe/voices-from-europes-far-right.html

...
```
