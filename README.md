

<img alt="Intro to Bioinformatics" src="figures/course.png" style="max-width: 300px; text-align: center; margin-left: 30px; float: right;"/>

A short series offered by [fredhutch.io](http://fredhutch.io) to members of [Fred Hutch](http://www.fredhutch.org/en.html).


<br/>
<br/>


## Overview of class

Class outline:

1. [Overview & remote server access](01-gestalt.html)
2. [Unix Shell I - overview](02-unix-shell-intro.html)
3. [Unix Shell II - scripting](03-unix-shell.html)
4. [Version Control with Git](04-git.html)
5. [Python I - syntax and data types](05-python-intro.html)
6. [Python II - building data structures](06-python-oop.html)
7. [Python III - writing a program](07-python.html)

The class will be loosely following [Bioinformatics Data Skills](http://shop.oreilly.com/product/0636920030157.do) for the overview, unix, and version control sections.
For the python sections, we'll be following our own curriculum, and referring to the [Codecademy course](https://www.codecademy.com/tracks/python) for practice with the concepts.


## Prerequisites (connecting to the remote server)

You will need to bring a laptop to class to participate in the interactive sessions.
However, all our work will be happening on a remote server to which we connect.
Thus, it is vital that you ensure you can connect to this remote server before coming to the first class.
(Specifically, make sure you can connect over the Marconi wifi network while on the Hutch campus.)

Connecting to the remote server requires the use of a _terminal_ program, which let's us control a computer with text based commands.
How you open the terminal program depends a bit on what operating system you are using.
However, once you have the terminal open, you'll execute the following command

```
ssh <username>@rhino
```

Here, `<username>` should be replaced by your Fred Hutch network username.
When this command runs, you'll be prompted for a password; use your Fred Hutch network password.
You should see an informational message about the system, followed by a prompt that looks something like:

```
<username>@rhino04:~$
```

Try typing `echo "it is working"`, and hitting enter.
The terminal should print out "it is working" on the following line, and return a new prompt.

Next, try typing `cd ~` and hitting enter.
The terminal should return a new prompt.

If instead of this behavior you see something that looks like an error message, please notify us so we can help you get set up before the first class starts.
(Note that you may get `rhino01`, `rhino02` or `rhino03` instead of `rhino04`; this is ok).

Below are the details about how you can get a terminal program with SSH, given your operating system.

### Linux or OSX

Linux operating systems (such as Ubuntu) and Mac OSX come with SSH-capable terminals pre-installed.
It should be straight forward to Google how to find and run the terminal program for your particular operating system.

Note that if you are using a Linux operating system, you may have problems with the wifi on campus, due to some unusual network settings.
If you are unable to connect via wifi on your laptop, please ping the Fred Hutch computing Help Desk or Sci Comp to get you running.

### Windows

Windows does not ship with an SSH capable terminal.
As such, you will need to do one of the following:

* [**Recommended**] If you are on Windows 10, it is recommended you install "Bash on Windows" (aka the "Windows Subsystem for Linux", or WSL). You can follow the "How to Install ..." instructions section [here](https://www.howtogeek.com/249966/how-to-install-and-use-the-linux-bash-shell-on-windows-10/).
* If you aren't running Windows 10, we recommend you upgrade to Windows 10 if possible.
* If not, we recommend you install [PuTTY](http://www.putty.org/), which will let you SSH into the `rhino` servers.
* You can also use [NoMachine](https://www.nomachine.com/) on the laptop you plan to bring to class to log into a remote Ubuntu/Linux desktop to use its Terminal (see directions [here](nomachine-directions.html)).
* Finally, you can also install [Virtual Box](https://www.virtualbox.org/wiki/Downloads), and an Ubuntu virtual machine if you want to tinker with your own Linux environment and use the terminal from there.


## Other prereqs

You should also be able to copy and paste text to and from the terminal.
In Mac OSX, you can do this with Command-c and Command-v, as you normally would.
On a Linux terminal, you need Ctrl-Shift-C and Ctrl-Shift-V.
For Windows/PuTTY users, copying and pasting is accomplished using select and right click (see [here](http://kb.site5.com/shell-access-ssh/putty/putty-how-to-copy-and-paste-to-and-from-a-putty-window/)).
Make sure to try pasting and copying from the terminal before coming to the first class, so that you can copy and paste longer commands from the slides.

You will also need a [GitHub](https://github.com) account for the course.
You can sign up for free [here](https://github.com).

We also ask that you read the first two chapters of [the book](http://shop.oreilly.com/product/0636920030157.do) (particularly the first) before coming to class, as they'll give you some nice big picture context to work from.



## Text editors

In the first class, we'll teach you how to use the `vi`/`vim` text editor, a useful and powerful tool for editing text and code when you are restricted to using a terminal.
However, for the remainder of the classes you can use a desktop text editor as long as you can connect to your shared Hutch drive (frequently mounted as the "H" drive, at least on Macs), and edit your `~/bioinfclass` files from your laptop's text editor.
If you choose this path, we recommend you look at [Atom](https://atom.io/) or [Sublime](https://www.sublimetext.com/) for text editors.

You may also choose to continue to use vim for the remainder of the classes.
If you do so, there will be occasional guidance and tips in class which may be helpful.


## Technical Notes

The slides (source code [here](https://github.com/fredhutchio/intro-bioinformatics)) are written in a little extension of [Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet).
After processing, the Markdown gets converted to a [reveal.js](http://github.com/hakimel/reveal.js) presentation.
HTML is rendered by the brilliant [pandoc](http://johnmacfarlane.net/pandoc/).

Source files are in the `src/` directory, and have extension `.mds`.
You can compile the file `src/somefile.mds` by typing `make somefile.html`, and open the file with firefox or chromium.
You may need to install pandoc and some python related things to run this code.
See the `Makefile` for some demonstration of `make`, if you're interested in using that as a replacement for building bioinformatics pipelines, or for customizing details of where files go and such in your fork.
I may rewrite the build in SCons as well, so you have an example of that (and so I can work with this project more sanely).

<!--No trees at the moment...-->
<!--Trees are rendered using the [archaeopteryx](http://www.phylosoft.org/archaeopteryx/) tree viewer.-->


## License

You are free to use and modify this code under the terms of the creative commmons license:

<a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/"><img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by-nc-sa/3.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Intro Bioinformatics curricula and slide processing</span> by <a href="http://metasoarous.com">Christopher Small</a> & <a xmlns:cc="http://creativecommons.org/ns#" href="http://matsen.fhcrc.org" property="cc:attributionName" rel="cc:attributionURL">Frederick A. Matsen IV</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/">Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License</a>.


