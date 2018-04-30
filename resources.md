
<div class='theme-fredhutch'> <br/>

# Class resources

Most of these resources are tucked away towards the end of various class sections, but I thought it might be useful to aggregate and organize some of the most useful information somewhere so that the key bits of information can be found more easily.
This is just a start for now.


## Zsh

The default shell is called BASH for Bourne Again SHell (named after the Bourne SHell from which it drew inspiration).
You can email scicomp and ask them to switch your shell to zsh, and I'd highly recommend you do this.
Zsh comes with much better autocompletion, better/smarter themes, and some very helpful plugins.

In particular, you may wish to check out `autojump`, a zsh plugin which let's you very quickly/lazy change directories.

Do note though that if you end up doing this, you will have to duplicate the Environment setup steps from the
1st class (changes to `~/.bashrc`) in your new `~/.zshrc` file.


## Vim resources

### vim tutor

It's possible to hack by for quite a while with "just enough vim", but if you're really looking to use it as a primary text editor, it helps to go through a thorough explanation of certain things.
In my opinion, the `vimtutor` program is the best way to do this, as it literally just plops you into vim with a text file of lessons loaded up, so you are forced to use `vim` as you learn `vim`.
This was how I learned.

### Vim plugins and Vundle

The vim community has amassed a legion of plugins which extend vim to do all sorts of cool things.
It used to be that installing and maintaining all these plugins was a pain in the butt, but now we have a plugin for managing plugins called Vundle.
It's awesome, and you should use it.

<https://github.com/VundleVim/Vundle.vim>

Some plugins you might want to consider installing:

* [T-slime](https://github.com/jgdavey/tslime.vim) lets you highlight code in vim's visual mode, and send to another tmux pane. By sending to a REPL pane, you can quickly highlight and evaluate chunks of code from your editor.
* [NerdTree](https://github.com/scrooloose/nerdtree) gives you a `tree` like file navigator from within vim, so you can quickly find and edit files.
* [NerdCommenter](https://github.com/scrooloose/nerdcommenter) has a few useful commands for commenting/uncommenting blocks of code.
* [JediVim](https://github.com/davidhalter/jedi-vim) autocomplete and documentation for python; super dope.



## Emacs

Emacs is another powerful, old school terminal based text editor which you may also consider.
Maybe someone else can add some resources here with respect to it.



## Tmux

### tmux plugin manager (tpm)

Similarly to vim, tmux can be extended with various plugins.
And just as with vim, we have a plugin which helps us do this, called `tpm`.

<https://github.com/tmux-plugins/tpm>


## Functional programming

To learn more about functional programming, see

<https://maryrosecook.com/blog/post/a-practical-introduction-to-functional-programming>


## Data visualization

I'm a big fan of Vega and Vega-Lite for data visualizations.
If you're interested in such things, take a look at [this presentation](/vega-prez.html) I put together.


</div>


