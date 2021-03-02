version 1.0

task GetRootTermspl {
  input {
    Boolean? obo_input_file
    String usage
  }
  command <<<
    get_root_terms_pl \
      ~{usage} \
      ~{if (obo_input_file) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    obo_input_file: "OBO input file"
    usage: ": get_root_terms.pl [options]"
  }
  output {
    File out_stdout = stdout()
  }
}