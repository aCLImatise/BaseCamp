version 1.0

task GetTermLocalNeighbourhood.pl {
  input {
    Boolean? obo_input_file
    Boolean? term_id
    Boolean? relationship_type
  }
  command <<<
    get_term_local_neighbourhood.pl \
      ~{true="-f" false="" obo_input_file} \
      ~{true="-t" false="" term_id} \
      ~{true="-r" false="" relationship_type}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
    term_id: "term ID"
    relationship_type: "relationship type"
  }
}