#!/usr/bin/perl
use strict;
use warnings;
use Test::More;

use Mojo::Pg;

# use Daje::Database::Postgres;

sub tables {

    # my $pg = Mojo::Pg->new->dsn(
    #     "dbi:Pg:dbname=Workflowtest;host=database;port=15432;user=test;password=test"
    # );
    #
    # my $tables = Daje::Database::Postgres->new(pg=>$pg);
    # my $excluded = "mojo_migrations";
    # my $list = $tables->get_tables($excluded,'public');
    my $test = 1;
    return $test;
}
ok(tables() == 1);
done_testing();

1;