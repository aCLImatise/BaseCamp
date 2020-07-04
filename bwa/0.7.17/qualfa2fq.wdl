version 1.0

task Qualfa2fq.pl {
  input {
    String in_dot_fast_a
    String in_dot_qual
  }
  command <<<
    qualfa2fq.pl \
      ~{in_dot_fast_a} \
      ~{in_dot_qual}
  >>>
  parameter_meta {
    in_dot_fast_a: ""
    in_dot_qual: ""
  }
}