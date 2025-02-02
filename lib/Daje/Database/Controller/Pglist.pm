package Daje::Database::Controller::Pglist;
use Mojo::Base 'Daje::Database::Controller::BaseController';

use List::MoreUtils qw { first_index };
use Daje::Database::Helper::Common;
use Daje::Database::Model;

sub list($self) {
    $self->render_later;

    my $err;
    my $index;
    my $table = $self->param('table');
    my $data = $self->get_basedata();

    $self->pgmodel->list_p($data, $table)->then(sub($result) {
        $self->render(json => { 'result' => 'success', data => $result });
     })->catch(sub($err) {
         $self->render(json => { 'result' => 'failed', data => $err });
     })->wait();
}

1;
#################### pod generated by Pod::Autopod - keep this line to make pod updates possible ####################

=head1 NAME

Daje::Database::Controller::Pglist


=head1 REQUIRES

L<Daje::Database::Model> 

L<Daje::Database::Helper::Common> 

L<List::MoreUtils> 

L<Mojo::Base> 


=head1 METHODS

=head2 list($self)

 list($self)();


=cut

