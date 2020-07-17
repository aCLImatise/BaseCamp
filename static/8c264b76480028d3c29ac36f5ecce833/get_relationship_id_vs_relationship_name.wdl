version 1.0

task GetRelationshipIdVsRelationshipName.pl {
  input {
    Boolean? obo_input_file
  }
  command <<<
    get_relationship_id_vs_relationship_name.pl \
      ~{true="-f" false="" obo_input_file}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
  }
}