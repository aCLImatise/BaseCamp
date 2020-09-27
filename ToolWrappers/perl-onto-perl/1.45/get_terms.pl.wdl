version 1.0

task GetTermspl {
  input {
    Boolean? obo_input_file
    String usage
  }
  command <<<
    get_terms_pl \
      ~{usage} \
      ~{if (obo_input_file) then "-f" else ""}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
    usage: ": get_terms.pl [options]"
  }
  output {
    File out_stdout = stdout()
  }
}