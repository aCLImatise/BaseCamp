version 1.0

task OrthomclLoadBlast {
  input {
    String config_file
    String similar_seqs_file
  }
  command <<<
    orthomclLoadBlast \
      ~{config_file} \
      ~{similar_seqs_file}
  >>>
  parameter_meta {
    config_file: ""
    similar_seqs_file: ""
  }
}