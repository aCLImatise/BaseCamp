version 1.0

task Fqfiltpl {
  input {
    String this
    String in_dot_fq
    String min_len
  }
  command <<<
    fqfilt_pl \
      ~{this} \
      ~{in_dot_fq} \
      ~{min_len}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    this: ""
    in_dot_fq: ""
    min_len: ""
  }
  output {
    File out_stdout = stdout()
  }
}