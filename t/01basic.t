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

{
	my $cmd = sprintf(
		'"%s" --test-command',
		Alien::Wenity->path,
	);
	like(qx{$cmd}, qr{\bok\b});
}

my $interactive = prompt("Interactive tests? (y/n)", "n");
if ($interactive !~ /y/i)
{
	done_testing;
	exit;
}
else
{
	my $cmd = sprintf(
		'"%s" --entry --text "Type PASS to pass the test."',
		Alien::Wenity->path,
	);
	like(qx{$cmd}, qr{pass}i);
}

done_testing;
