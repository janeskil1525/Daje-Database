package Daje::Database::Controller::Pgcreate;
use Mojo::Base 'Database::Controller::BaseController';


use Daje::Database::Helper::Common;

sub create($self) {

    $self->render_later;
    my $data = Daje::Database::Helper::Common->new($self)->get_basedata();

}

1;