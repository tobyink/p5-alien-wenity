use strict;
use warnings;
use Test::More;

use Alien::Wenity;
use IO::Prompt::Tiny qw(prompt);

if ($^O !~ /win/i)
{
	plan skip_all => 'no testing on non-Windows systems';
	exit;
}

my $PATH = eval { Alien::Wenity->path } || 'share\\Wenity.exe';
diag "PATH: $PATH";

like(qx{"$PATH" --test-command}, qr{\bok\b});

my $interactive = prompt("Interactive tests? (y/n)", "n");
if ($interactive !~ /y/i)
{
	done_testing;
	exit;
}
else
{
	like(qx{"$PATH" --entry --text "Type PASS to pass the test."}, qr{pass}i);
}

done_testing;
