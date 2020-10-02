version 1.0

task GetChildTermspl {
  input {
    Boolean? obo_input_file
    Boolean? term_id
    String usage
  }
  command <<<
    get_child_terms_pl \
      ~{usage} \
      ~{if (obo_input_file) then "-f" else ""} \
      ~{if (term_id) then "-t" else ""}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
    term_id: "term ID"
    usage: ": get_child_terms.pl [options]"
  }
  output {
    File out_stdout = stdout()
  }
}