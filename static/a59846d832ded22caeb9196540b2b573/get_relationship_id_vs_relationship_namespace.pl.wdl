version 1.0

task GetRelationshipIdVsRelationshipNamespacepl {
  input {
    Boolean? obo_input_file
    String usage
  }
  command <<<
    get_relationship_id_vs_relationship_namespace_pl \
      ~{usage} \
      ~{if (obo_input_file) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    obo_input_file: "OBO input file"
    usage: ": get_relationship_id_vs_relationship_namespace.pl [options]"
  }
  output {
    File out_stdout = stdout()
  }
}