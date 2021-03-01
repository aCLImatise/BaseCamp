version 1.0

task GetTermIdVsTermNamespacepl {
  input {
    Boolean? obo_input_file
    String usage
  }
  command <<<
    get_term_id_vs_term_namespace_pl \
      ~{usage} \
      ~{if (obo_input_file) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    obo_input_file: "OBO input file"
    usage: ": get_term_id_vs_term_namespace.pl [options]"
  }
  output {
    File out_stdout = stdout()
  }
}