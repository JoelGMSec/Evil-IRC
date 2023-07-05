<p align="center"><img width=450 alt="Evil-IRC" src="https://github.com/JoelGMSec/Evil-IRC/blob/main/Evil-IRC.png"></p>

# Evil-IRC
**Evil-IRC** is an Old School IRC Backdoor writed in Perl.

This script allows you to execute code on an infected victim. You can do all sorts of things like make it write to other channels, send private messages to other users or execute commands on the operating system. All this without the victim knowing, as the tool hooks the messages so that they are not displayed in the IRC client.


# Requirements (on victim side)
- X-Chat or compatible (like HexChat)
- Install Perl Module on IRC client
- Load Evil-IRC.pl script


# Download
It is recommended to clone the complete repository or download the zip file.
You can do this by running the following command:
```
git clone https://github.com/JoelGMSec/Evil-IRC
```


# Usage
```
 .:[ Evil-IRC by @JoelGMSec ]:.
------ Available commands ------
!hi = Say hi to master
!help = Show this help message
!cmd = Execute command and send output
!msg = Send msg in channel or privmsg
!join = Join to specific channel
!leave = Leave specific channel
!op = Op nick in current channel
!deop = Deop nick in current channel
!ban = Ban nick in current channel
!kick = Kick nick in current channel
!send = Send specific file to master
!clear = Clear current window
!close = Close current window
!custom = Execute custom IRC command
!quit = Exit program

```


### The detailed guide of use can be found at the following link:

https://darkbyte.net/evil-irc-hacking-like-the-90s


# License
This project is licensed under the GNU 3.0 license - see the LICENSE file for more details.


# Credits and Acknowledgments
This tool has been created and designed from scratch by Joel Gámez Molina // @JoelGMSec


# Contact
This software does not offer any kind of guarantee. Its use is exclusive for educational environments and / or security audits with the corresponding consent of the client. I am not responsible for its misuse or for any possible damage caused by it.

For more information, you can find me on Twitter as [@JoelGMSec](https://twitter.com/JoelGMSec) and on my blog [darkbyte.net](https://darkbyte.net).


# Support
You can support my work buying me a coffee:

[<img width=250 alt="buymeacoffe" src="https://cdn.buymeacoffee.com/buttons/v2/default-blue.png">](https://www.buymeacoffee.com/joelgmsec)
