version 1.0

task Mixreads {
  input {
    File root_name_fast_q_file_a
  }
  command <<<
    mixreads \
      ~{root_name_fast_q_file_a}
  >>>
  parameter_meta {
    root_name_fast_q_file_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}