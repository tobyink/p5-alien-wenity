BEGIN { die "Windows only!\n" unless $^O =~ /win/i || -d '.hg' };

use inc::Module::Package 'RDF:tobyink 0.009';
install_share;
