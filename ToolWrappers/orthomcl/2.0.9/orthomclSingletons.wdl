version 1.0

task OrthomclSingletons {
  input {
    String good_proteins
    String groups_file
    String? id_prefix
  }
  command <<<
    orthomclSingletons \
      ~{good_proteins} \
      ~{groups_file} \
      ~{id_prefix}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    good_proteins: ""
    groups_file: ""
    id_prefix: ""
  }
  output {
    File out_stdout = stdout()
  }
}