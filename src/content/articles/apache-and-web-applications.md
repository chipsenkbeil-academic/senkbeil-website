---
author_name: Chip Senkbeil
author_uri: http://chip.senkbeil.org
title: Apache and Web Applications
created_at: 2013-10-21
kind: article
tags: [ 'apache', 'git' ]
---

So, I've been looking into deploying a Ruby web application to handle
post-commit hooks from Git. As my website is statically generated via
[Hakyll](http://jaspervdj.be/hakyll/), I needed a way to be able update the
posts and pages without install Haskell and the Hakyll library on each of my
machines. So, the obvious solution would be to have my server run Haskell with
Hakyll installed and simply tell my server when it needs to regenerate the
website.

Looking around, I found this 
[link](http://stackoverflow.com/questions/3057090/running-ruby-app-on-apache)
on StackOverflow. It details using Apache as a proxy for certain requests so
it can forward the request to another port. By following this, I should be able
to run my Ruby application as a RESTful service that can receive Git hooks
and handle them accordingly.

I wanted to be able to receive these requests on a standard port like port 80 so
that I would not need to forward an additional port to allow this to work. I'll
be giving this a go soon and posting my Ruby web application along with a short
guide once I've finished this.

