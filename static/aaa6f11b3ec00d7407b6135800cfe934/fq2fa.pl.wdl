version 1.0

task Fq2fapl {
  input {
    String this
    String in_dot_fq
  }
  command <<<
    fq2fa_pl \
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