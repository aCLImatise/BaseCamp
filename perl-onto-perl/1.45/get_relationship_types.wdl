version 1.0

task GetRelationshipTypes.pl {
  input {
    Boolean? obo_input_file
  }
  command <<<
    get_relationship_types.pl \
      ~{true="-f" false="" obo_input_file}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
  }
}