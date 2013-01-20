BEGIN {
	if ($^O !~ /win/i) {
		require File::Which;
		File::Which::which('wine') or die "Need wine!";
	}
};

use inc::Module::Package 'RDF:tobyink 0.009';
install_share;
