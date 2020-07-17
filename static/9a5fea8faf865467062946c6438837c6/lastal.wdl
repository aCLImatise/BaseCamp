version 1.0

task Lastal {
  input {
    String last_db_name
    String fast_a_sequence_file
  }
  command <<<
    lastal \
      ~{last_db_name} \
      ~{fast_a_sequence_file}
  >>>
  parameter_meta {
    last_db_name: ""
    fast_a_sequence_file: ""
  }
}