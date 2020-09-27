version 1.0

task Dig2 {
  input {
    String dig
    String fast_a_sequence_database
    String settings
  }
  command <<<
    dig2 \
      ~{dig} \
      ~{fast_a_sequence_database} \
      ~{settings}
  >>>
  parameter_meta {
    dig: ""
    fast_a_sequence_database: ""
    settings: ""
  }
  output {
    File out_stdout = stdout()
  }
}