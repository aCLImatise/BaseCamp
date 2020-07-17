version 1.0

task Fq2fa.pl {
  input {
    String this
    String in_dot_fq
  }
  command <<<
    fq2fa.pl \
      ~{this} \
      ~{in_dot_fq}
  >>>
  parameter_meta {
    this: ""
    in_dot_fq: ""
  }
}