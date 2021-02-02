version 1.0

task Fastqtofasta {
  input {
    String in_fast_q_file
    String out_fast_a_file
  }
  command <<<
    fastqtofasta \
      ~{in_fast_q_file} \
      ~{out_fast_a_file}
  >>>
  parameter_meta {
    in_fast_q_file: ""
    out_fast_a_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}