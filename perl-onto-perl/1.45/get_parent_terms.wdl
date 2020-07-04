version 1.0

task GetParentTerms.pl {
  input {
    Boolean? obo_input_file
    Boolean? term_id
  }
  command <<<
    get_parent_terms.pl \
      ~{true="-f" false="" obo_input_file} \
      ~{true="-t" false="" term_id}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
    term_id: "term ID"
  }
}