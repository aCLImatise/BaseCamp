version 1.0

task GetTermIdVsTermNamespace.pl {
  input {
    Boolean? obo_input_file
  }
  command <<<
    get_term_id_vs_term_namespace.pl \
      ~{true="-f" false="" obo_input_file}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
  }
}