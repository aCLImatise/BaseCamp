version 1.0

task GetRelationshipTypespl {
  input {
    Boolean? obo_input_file
    String usage
  }
  command <<<
    get_relationship_types_pl \
      ~{usage} \
      ~{if (obo_input_file) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    obo_input_file: "OBO input file"
    usage: ": get_relationship_types.pl [options]"
  }
  output {
    File out_stdout = stdout()
  }
}