version 1.0

task MatchDump {
  input {
    String k_match_output_file
  }
  command <<<
    MatchDump \
      ~{k_match_output_file}
  >>>
  parameter_meta {
    k_match_output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}