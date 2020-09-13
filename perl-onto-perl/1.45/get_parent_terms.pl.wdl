version 1.0

task GetParentTermspl {
  input {
    Boolean? obo_input_file
    Boolean? term_id
    String usage
    String options
  }
  command <<<
    get_parent_terms_pl \
      ~{usage} \
      ~{options} \
      ~{if (obo_input_file) then "-f" else ""} \
      ~{if (term_id) then "-t" else ""}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
    term_id: "term ID"
    usage: ": get_parent_terms.pl [options]"
    options: ":"
  }
  output {
    File out_stdout = stdout()
  }
}