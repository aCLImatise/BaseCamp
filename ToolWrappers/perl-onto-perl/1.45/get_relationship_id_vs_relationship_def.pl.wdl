version 1.0

task GetRelationshipIdVsRelationshipDefpl {
  input {
    Boolean? obo_input_file
    String usage
    String options
  }
  command <<<
    get_relationship_id_vs_relationship_def_pl \
      ~{usage} \
      ~{options} \
      ~{if (obo_input_file) then "-f" else ""}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
    usage: ": get_relationship_id_vs_relationship_def.pl [options]"
    options: ":"
  }
  output {
    File out_stdout = stdout()
  }
}