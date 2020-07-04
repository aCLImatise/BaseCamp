version 1.0

task GetTermsAndSynonyms.pl {
  input {
    Boolean? obo_input_file
  }
  command <<<
    get_terms_and_synonyms.pl \
      ~{true="-f" false="" obo_input_file}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
  }
}