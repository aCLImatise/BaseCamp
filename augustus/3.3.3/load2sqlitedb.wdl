version 1.0

task Load2sqlitedb {
  input {
    String? species
    String? dbaccess
    String? parameters
    String fast_a_file
  }
  command <<<
    load2sqlitedb \
      ~{parameters} \
      ~{fast_a_file} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(dbaccess) then ("--dbaccess " +  '"' + dbaccess + '"') else ""}
  >>>
  parameter_meta {
    species: ""
    dbaccess: ""
    parameters: ""
    fast_a_file: ""
  }
}