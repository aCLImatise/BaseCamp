version 1.0

task GetRelationshipIdVsRelationshipNamepl {
  input {
    Boolean? obo_input_file
    String usage
  }
  command <<<
    get_relationship_id_vs_relationship_name_pl \
      ~{usage} \
      ~{if (obo_input_file) then "-f" else ""}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
    usage: ": get_relationship_id_vs_relationship_name.pl [options]"
  }
  output {
    File out_stdout = stdout()
  }
}