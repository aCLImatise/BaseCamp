version 1.0

task GetObsoleteTermIdVsDefInGopl {
  input {
    Boolean? obo_input_file
    String usage
  }
  command <<<
    get_obsolete_term_id_vs_def_in_go_pl \
      ~{usage} \
      ~{if (obo_input_file) then "-f" else ""}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
    usage: ": get_obsolete_term_id_vs_def_in_go.pl [options]"
  }
  output {
    File out_stdout = stdout()
  }
}