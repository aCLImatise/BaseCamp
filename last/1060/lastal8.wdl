version 1.0

task Lastal8 {
  input {
    String last_db_name
    String fast_a_sequence_file
  }
  command <<<
    lastal8 \
      ~{last_db_name} \
      ~{fast_a_sequence_file}
  >>>
  parameter_meta {
    last_db_name: ""
    fast_a_sequence_file: ""
  }
}