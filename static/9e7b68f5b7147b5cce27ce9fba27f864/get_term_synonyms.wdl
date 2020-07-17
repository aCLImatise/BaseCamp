version 1.0

task GetTermSynonyms.pl {
  input {
    Boolean? obo_input_file
    Boolean? term_name
  }
  command <<<
    get_term_synonyms.pl \
      ~{true="-f" false="" obo_input_file} \
      ~{true="-t" false="" term_name}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
    term_name: "term name"
  }
}