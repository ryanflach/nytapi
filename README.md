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
$ruby top_stories.rb world

Title: Obama’s Support of Erdogan Is a Stark Reminder of Turkey’s Value to U.S.
	By MARK LANDLER
Published: July 21, 2016
The Turkish leader may be a bitter disappointment to Mr. Obama, but he is still better than other options in the chaotic landscape of the Middle East.
http://www.nytimes.com/2016/07/21/world/europe/obama-erdogan-turkey-coup-attempt.html

Title: Vladimir Putin Is Expected to Withstand Russia’s Doping Scandal
	By NEIL MacFARQUHAR
Published: July 21, 2016
Mr. Putin is managing the crisis with his standard dual track: a message of cooperation for the international community, while telling Russians that the West is constantly plotting against them.
http://www.nytimes.com/2016/07/21/world/europe/putin-doping-rio-olympics.html

...
```
