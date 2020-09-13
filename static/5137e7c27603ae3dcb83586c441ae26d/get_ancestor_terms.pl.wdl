version 1.0

task GetAncestorTermspl {
  input {
    Boolean? obo_input_file
    Boolean? term_id
    String usage
    String options
  }
  command <<<
    get_ancestor_terms_pl \
      ~{usage} \
      ~{options} \
      ~{if (obo_input_file) then "-f" else ""} \
      ~{if (term_id) then "-t" else ""}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
    term_id: "term ID"
    usage: ": get_ancestor_terms.pl [options]"
    options: ":"
  }
  output {
    File out_stdout = stdout()
  }
}