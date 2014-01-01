Senkbeil Website
================

The new version of my website, using HTML5, CSS3, and occasional Javascript.

This is written using [nanoc](http://www.nanoc.ws) as the site generator. I
moved away from using [hakyll](jaspervdj.be/hakyll/) because of my lack of
interest in picking up Haskell. Keeping myself focused enough to write content
as well work on projects of interest to me is my main goal; so, playing around
with the site generator beyond writing simple content isn't on my todo list.

I have also used [Jekyll](http://jekyllrb.com) and [Docpad](http://docpad.org),
which had their own strengths. For me, Jekyll was too focused on a
blog-oriented website, which was not my entire focus. Docpad was a personal
favorite of mine, but I didn't want to install Node.js to run it. Because of my
experience in Ruby and the more versatile nature of nanoc, I decided to use
nanoc as my site generator.

Necessary Tools
---------------

To use this website, you need to install _nanoc_ using `gem install nanoc` with
a copy of Ruby installed. Furthermore, _pandoc_ is needed (other markdown
converters may work) to convert the pages. As mentioned 
[here](http://nanoc.ws/docs/reference/filters/pandoc/), the Ruby gem 
_PandocRuby_ needs to be installed as well (after installing pandoc). This can
be done by executing `gem install pandoc-ruby`.

Finally, I used nanoc's view capability to run a Rack webserver (Sinatra?) to
test out my website. As mentioned in nanoc's documentation, the gem _adsf_ is
needed to launch the server; so, use `gem install adsf` to install that gem.

