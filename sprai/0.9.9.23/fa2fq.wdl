version 1.0

task Fa2fq.pl {
  input {
    String this
    String in_dot_fast_a
  }
  command <<<
    fa2fq.pl \
      ~{this} \
      ~{in_dot_fast_a}
  >>>
  parameter_meta {
    this: ""
    in_dot_fast_a: ""
  }
}