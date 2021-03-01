version 1.0

task GetTermSynonymspl {
  input {
    Boolean? obo_input_file
    Boolean? term_name
    String usage
  }
  command <<<
    get_term_synonyms_pl \
      ~{usage} \
      ~{if (obo_input_file) then "-f" else ""} \
      ~{if (term_name) then "-t" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    obo_input_file: "OBO input file"
    term_name: "term name"
    usage: ": get_term_synonyms.pl [options]"
  }
  output {
    File out_stdout = stdout()
  }
}