use strict;
use warnings;

use PG::Jenkins;

my $app = PG::Jenkins->apply_default_middlewares(PG::Jenkins->psgi_app);
$app;

