package Daje::Database::Controller::Pgupdate;
use Mojo::Base 'Database::Controller::BaseController';

use Daje::Database::Helper::Common;

sub update($self) {

    $self->render_later;
    my $data = Daje::Database::Helper::Common->new($self)->get_basedata();
}

1;