package Daje::Database::Controller::Pgdelete;
use Mojo::Base 'Database::Controller::BaseController';

use Daje::Database::Helper::Common;

sub delete($self) {

    $self->render_later;
    my $data = Daje::Database::Helper::Common->new($self)->get_basedata();
}
1;