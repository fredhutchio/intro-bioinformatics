# Intro to Bioinformatics

<img alt="Class poster" src="figures/course.png" style="max-width: 300px; text-align: center; margin-left: 30px; float: right;"/>

A short series offered by [fredhutch.io](http://fredhutch.io) to members of [Fred Hutch](http://www.fredhutch.org/en.html).


<br/>
<br/>


## Overview of class

The following is the tentative outline for courses in the class:

1. [Overview & remote server access](01-gestalt.html)
2. [Unix Shell I - overview](02-unix-shell-intro.html)
3. [Unix Shell II - scripting](03-unix-shell.html)
4. Version Control with Git
5. Python I - syntax and data types
6. Python II - building data structures
7. Python III - writing a program

The class will be loosely following [Bioinformatics Data Skills](http://shop.oreilly.com/product/0636920030157.do) for the overview, unix, and version control sections.
For the python sections, we'll be following [TBD].

The links in the outline above will eventually point to the slides and resources for the respective sessions.


## Prerequisites

For the first class, please install [NoMachine](https://www.nomachine.com/) on the laptop you plan to bring to class.
We also ask that you read the first two chapters of [the book](http://shop.oreilly.com/product/0636920030157.do) (particularly the first) before coming to class, but you won't be chastised if you don't.


## Optional: Running on your own machine instead of NoMachine

After the first class, if you have a Linux or OSX machine and wish to avoid using NoMachine, you can do so as long as you have `sshfs` installed on your computer.
For Ubuntu users, all you have to do is run `sudo apt-get install sshfs` in a terminal
For OSX users, you have to

* First install XCode from the Apple Store
* Then install [homebrew](http://brew.sh)
* Then run `brew install sshfs` from your OSX terminal

From within the Fred Hutch network you should now be able to run

```bash
mkdir -p ~/mounts/hutch
sshfs rhino: ~/mounts/hutch
```

Now you can access files in your home directory on the servers as though they lived in `~/mounts/hutch` on your laptop.
In particular, you can now use your text editor of choice to edit code files for the remainder of this class.
(We recommend [Sublime Text](http://www.sublimetext.com/), but if you're on Ubuntu you can probably get by with Gedit).


### Windows users...

Sorry, running directly from Windows is not supported.
You can always install [Virtual Box](https://www.virtualbox.org/wiki/Downloads), and an Ubuntu virtual machine if you really want to run things on your own laptop, and in particular if you're interested in having your own Linux environment to play with.



## Technical Notes

The slides are written in a little extension of Markdown.
After processing, the Markdown gets converted to a [reveal.js](http://github.com/hakimel/reveal.js) presentation.
HTML is rendered by the brilliant [pandoc](http://johnmacfarlane.net/pandoc/).
Trees are rendered using the [archaeopteryx](http://www.phylosoft.org/archaeopteryx/) tree viewer.


## License

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/"><img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by-nc-sa/3.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Talks</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://matsen.fhcrc.org" property="cc:attributionName" rel="cc:attributionURL">Christopher Small & Frederick A. Matsen IV</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/">Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License</a>.

