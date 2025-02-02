package Daje::Database::Model::Super::CompanyType;
use Mojo::Base 'Daje::Database::Model::Super::Common::Base', -base, -signatures;

# Autogenerated class Sun Feb  2 14:05:15 2025
# Any manual changes to this class will be overwritten next time its generated

has 'fields' => "'company_type_pkey', 'editnum', 'insby', 'insdatetime', 'modby', 'moddatetime', 'company_type'";
has 'primary_key_name' => "company_type_pkey";
has 'table_name' => "company_type";



    sub load_pkey($company_type_pkey) {

    my $result = $self->load_pk(
        $table_name,
        $fields,
        $primary_key_name,
        $company_type_pkey
    );
    return $result;
}


    
    sub insert_company_type($data) {
    my $result = $self->insert($table_name, $data);
    return $result;
}


    sub update_company_type($data, $keys) {
    my $result = $self->update($table_name, $data, $keys)
    return $result;
}


    sub load_list($key_value) {
    my $result = $self->load_a_list(
        $table_name,
        $fields,
        $key_value
    );
    return $result;
}


    


