version 1.0

task Fq2idfq.pl {
  input {
    String this
    String in_dot_fq
  }
  command <<<
    fq2idfq.pl \
      ~{this} \
      ~{in_dot_fq}
  >>>
  parameter_meta {
    this: ""
    in_dot_fq: ""
  }
}