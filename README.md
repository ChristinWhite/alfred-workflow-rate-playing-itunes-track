# Rate Playing iTunes Track _[ alfred workflow ]_

_This is an extremely early version of the workflow, it's not nearly ready to be used yet._

## Description

This workflow will allow you to toggle whether the currently playing iTunes track is loved, dislike it and set the star rating, it also displayed the loved status and rating when you pass Alfred the keyword.

## Existing Workflows

There are two existing workflows that mostly cover these functions [Love in iTunes](http://www.packal.org/workflow/love-itunes) and [Rate iTunes Track](https://github.com/dklem/Alfred2-Rate-iTunes-Track) and have heavily influenced my own. However, I wanted to write my own for a couple of reasons:

1. I wanted _love in iTunes_ to be a toggle action instead of only loving the track if it wasn't already loved.
2. I wanted the option to dislike a track.
3. I didn't like having icons that didn't match Alfred's native icons in the iOS remote app.
4. I thought it would be nice to consolidate both functions under a single workflow.

I also wanted a fairly simple project to learn the basics of writing Alfred workflows and improve my proficiency with AppleScript before moving on to a couple of larger workflow projects in the near future.

Why AppleScript? It's an odd language and one that I don't particularly like but does have some very useful automation capabilities so I wanted to become more proficient with it. It's much better documented than JXA at the moment so I figured AppleScript was a better place to start.

Once I've finished with the first version of this workflow I will probably rewrite the workflow in Swift, using AppleScript only where necessary.

## Version 1.0 Todo

- [ ] Find out if you can set node icons to a path rather than having potentially duplicate icons included by using the node's guid.
- [ ] Love _[ action ]_
	- [ ] Finish love script filter.
		- [ ] Determine how to set a secondary keyword without unnecessary duplication.
		- [ ] Switch to an actual JSON encoder rather than generating a gross manual string.
		- [ ] Determine how to properly access workflow environment variables inside an AppleScript file or consider finalizing the script inside of Alfred's Script Filter.
		- [ ] Refactor as an object-oriented design, this should be a fairly minimal change.
		- [ ] Add arguments to pass to run script action.
	- [ ] Rewrite the script action.
		- [ ] Allow _dislike_ option.
		- [ ] Allow Alfred variable option for whether _love_ should rate track with five stars and _dislike_ should rate it with 1/2 star.
- [ ] Set star rating _[ action ]_
	- [ ] ...
	- [ ] Decide if I should have external triggers for half star ratings. This might be useful for mapping to [my Karabiner actions](https://github.com/christopherdwhite/karabiner-configuration) with a modifier key.
- [ ] Optimize all finished icons.
- [ ] Implement updater
- [ ] Add documentation and sanitize for sharing.