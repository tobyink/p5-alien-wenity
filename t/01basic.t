use strict;
use warnings;
use Test::More;

use Alien::Wenity;
use IO::Prompt::Tiny qw(prompt);

my $interactive = prompt("Interactive tests? (y/n)", "n");

if ($interactive !~ /y/i)
{
	pass;
	done_testing;
	exit;
}

my $cmd = Alien::Wenity->command(
	"--entry",
	"--text",
	"Type 'pass' to pass the test.",
);

my $stdout = $cmd->close->stdout;
my $line   = <$stdout>;

like($line, qr{pass}i);

done_testing;
