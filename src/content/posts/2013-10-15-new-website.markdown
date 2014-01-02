---
author: Chip Senkbeil
title: New Website
type: post
tags: haskell, hakyll
---

Hello everyone and welcome to my new website! As you have no doubt seen in the
past, I have fiddled with content mangement systems and static content
generators over the course of this past year. Previously, I had written my
website from scratch using minimal HTML (not using proper HTML 5 tags) with
some basic CSS (not CSS 3) and no responsive design or anything fancy.

So, I've gained some minimal experience with web design when I wrote the new
[ACM website](http://www.acm.vt.edu/) for Virginia Tech. This used a little
mixture of Javascript to access our chapter's Google calendar entries through
a RESTful API and HTML5/CSS3 to create a basic responsive web design for
smaller screens and use proper structural tags along with color schemes
associated with Virginia Tech. I tested it on my Galaxy S4 in both landscape
and portrait modes. I used [Docpad](http://www.docpad.org/) to mix and match 
various templating and scripting technologies including 
[Eco](https://github.com/sstephenson/eco) and 
[CoffeeScript](http://www.coffeescript.org).

When it came to my own website, I considered using Docpad; however, I did not
want to take the time to implement a complicated template for my website.
Furthermore, I did not care to install Node.js to use the static generation
portion of Docpad. From there, I considered using
[Jekyll](http://www.jekyllrb.com) as a static generation tool focusing on
blogging. Similarly to my issues with installing Node.js, I decided against
Jekyll because of the requirement to install Ruby.

Oddly enough, my decision has moved to [Hakyll](http://jaspervdj.be/hakyll/).
I've been meaning to learn more about Haskell, the language used to power
Hakyll, which is apparently a Haskell library. My itch to learn Haskell stems
from the fact that my current window manager is [Xmonad](http://xmonad.org/).
Presently, I have resorted to fiddling blindly with Xmonad's configuration
script to get my setup working the way I want. Hopefully, having a second
source of dependence on Haskell will drive me to pick up the language, even
if only the basics.

So, with this site now up and running, I think I will resume my mix of blogging
about technologies and libraries I find along with my own personal software
and hardware projects. Buckle up because this should be a fun ride!

