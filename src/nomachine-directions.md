
# Setting up NoMachine for Ubuntu desktop on campus

[NoMachine](https://www.nomachine.com/) is a remote desktop application.
With it, you can log into a remote Ubuntu desktop running on the Hutch servers.
This let's you use the remote Ubuntu desktop's terminal application for SSHing into the compute servers we'll be using for the class.

## Advantages

One advantage to this is that for the parts of the class that involve editing text/code files, you can use a GUI text editor called GEdit, which comes with Ubuntu.
This will likely be easier for beginners to use than a terminal based text editor.

This is possible because the home directories on the compute servers are also mounted into the Ubuntu desktop sessions, meaning you can read and write data/files in both environments.

## Disadvantages

You may find the virtual desktops have high latency, and aren't as responsive as the text based text editors.
Also, it's just extra work to have to log into a remote desktop, and then from there into a remote terminal session.

## Instructions

First, [download and install NoMachine](https://www.nomachine.com/) on the laptop you'll be using for the class.

Next, open up NoMachine, and click the "New" button in the orange bar.
Name your connection, so you'll remember what it is (e.g., either "lynx" or "manx" (see below)).

1. Set protocol to **NX**
2. Set host to **lynx**, **lynx.fhcrc.org**, **manx**, or **manx.fhcrc.org**, and port to **4000**
3. Set authentication to **Password**
4. **Don't use a proxy**
5. Name your connection so you can remember what it is.

Once you have the remote Ubuntu desktop running, open up the terminal application:

1. Click the square button in the upper left.
2. Type in "Terminal"
3. Click on the Terminal icon (the one with `>_` on it)

Now try running `ssh <username>@rhino`, using your Hutch password when prompted.
If you get a prompt that looks roughly like

```
<username>@rhino04:~$ 
```

then everything has been set up correctly.



