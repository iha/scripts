##
## Put me in ~/.irssi/scripts, and then execute the following in irssi:
##
##       /load perl
##       /script load notify
##

use strict;
use Irssi;
use vars qw($VERSION %IRSSI);

$VERSION = "0.01";
%IRSSI = (
    authors     => 'Luke Macken',
    contact     => 'lewk@csh.rit.edu',
    name        => 'notify.pl',
    description => 'TODO',
    license     => 'GNU General Public License',
    url         => 'http://lewk.org/log/code/irssi-notify',
);

sub notify {
    my ($dest, $text, $stripped) = @_;
    my $server = $dest->{server};

    return if (!$server || !($dest->{level} & MSGLEVEL_HILIGHT));

    $stripped =~ s/[^a-zA-Z0-9 .,!\?@\:\<\>]//g;
    system("kdialog --passivepopup '$stripped' -title '$dest->{target}'");
    #system("notify-send -i gtk-dialog-info -t 5000 '$dest->{target}' '$stripped'");
}

Irssi::signal_add('print text', 'notify');
