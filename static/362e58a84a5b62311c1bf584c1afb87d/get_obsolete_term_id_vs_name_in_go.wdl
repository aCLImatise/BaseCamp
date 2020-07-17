version 1.0

task GetObsoleteTermIdVsNameInGo.pl {
  input {
    Boolean? obo_input_file
  }
  command <<<
    get_obsolete_term_id_vs_name_in_go.pl \
      ~{true="-f" false="" obo_input_file}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
  }
}