version 1.0

task BwaFa2pac {
  input {
    Boolean? f
    String in_dot_fast_a
    String? out_dot_prefix
  }
  command <<<
    bwa fa2pac \
      ~{in_dot_fast_a} \
      ~{out_dot_prefix} \
      ~{true="-f" false="" f}
  >>>
  parameter_meta {
    f: ""
    in_dot_fast_a: ""
    out_dot_prefix: ""
  }
}