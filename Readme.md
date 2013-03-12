---
layout: default
title: Readme
---

# EOX :: Mini Sites

## Installation

Welcome to our new Jekyll based mini site builder. To get started please first install ruby and rubygems on your system.

```bash
sudo apt-get install ruby rubygems python-pygments
bundle install

```

Run the development server (if you want to)

```bash
jekyll --server
```

Start coding!

## Creating sites

To create a new page, simply create a new file called *name.md*. This page will be rendered as *name.html*.

Another important part of the new page is the [YAML Front Matter](https://github.com/mojombo/jekyll/wiki/YAML-Front-Matter) block. It defines which layout is going to be used and any other variables you might need.

```
---
layout: default
title: Readme
---

# Heading 1

And a small paragraph of text!

```

## Deploying

ToDo ;)

## Ressources

For more information on Jekyll please see [its github page](https://github.com/mojombo/jekyll/), if you are more interested in the Markdown Syntax see [http://daringfireball.net/projects/markdown/syntax](http://daringfireball.net/projects/markdown/syntax)

## Questions & Bugs

Please submit tickets in the [gitlab project](https://gitlab.eox.at/sites/scaffold), I'll also try to write some documentation in the [wiki](https://gitlab.eox.at/sites/scaffold/wikis/) if I find time.

As always you can also reach me by mail at [marko.locher@eox.at](mailto:marko.locher@eox.at) or in person in the office!

Have fun,<br />
~ Marko