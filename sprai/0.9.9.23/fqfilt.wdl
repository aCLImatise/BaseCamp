version 1.0

task Fqfilt.pl {
  input {
    String this
    String in_dot_fq
    Int min_len
  }
  command <<<
    fqfilt.pl \
      ~{this} \
      ~{in_dot_fq} \
      ~{min_len}
  >>>
  parameter_meta {
    this: ""
    in_dot_fq: ""
    min_len: ""
  }
}