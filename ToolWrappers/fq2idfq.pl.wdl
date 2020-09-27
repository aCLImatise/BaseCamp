version 1.0

task Fq2idfqpl {
  input {
    String this
    String in_dot_fq
  }
  command <<<
    fq2idfq_pl \
      ~{this} \
      ~{in_dot_fq}
  >>>
  parameter_meta {
    this: ""
    in_dot_fq: ""
  }
  output {
    File out_stdout = stdout()
  }
}