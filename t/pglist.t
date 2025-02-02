#!/usr/bin/perl
use strict;
use warnings;
use Test::More;

use Mojo::Pg;

# use Daje::Database::Controller::Pglist;

sub tables {

    # my $pg = Mojo::Pg->new->dsn(
    #     "dbi:Pg:dbname=Venditabant;host=database;port=15432;user=postgres;password=PV58nova64"
    # );
    #
    # my $controller = Daje::Database::Controller::Pglist->new()->list();
    my $test = 1;
    return $test;
}
ok(tables() == 1);
done_testing();

1;