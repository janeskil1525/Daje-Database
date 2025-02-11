package Daje::Database::Model;
use Mojo::Base -base, -signatures, -async_await;

use List::MoreUtils qw{first_index};
use Daje::Database::Model::Postgres

has 'pg';
has 'log';


async sub list_p($self, $data, $table) {

    my $method = $table->{methods};
    my $index = first_index { 'list' eq $_->{action}} @{$method};

    my $list = Database::Model::Postgres->new(
         pg => $self->pg, log => $self->log
    )->test_list($data, $table, @{$method}[$index]);

    return $list;
}

1;
#################### pod generated by Pod::Autopod - keep this line to make pod updates possible ####################

=head1 NAME

Daje::Database::Model


=head1 REQUIRES

L<List::MoreUtils> 

L<Mojo::Base> 


=head1 METHODS


=cut

