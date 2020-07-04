version 1.0

task SentieonBwaFa2pac {
  input {
    Boolean? f
    String bwa
    String fa_two_pac
    String in_dot_fast_a
    String? out_dot_prefix
  }
  command <<<
    sentieon-bwa fa2pac \
      ~{bwa} \
      ~{fa_two_pac} \
      ~{in_dot_fast_a} \
      ~{out_dot_prefix} \
      ~{true="-f" false="" f}
  >>>
  parameter_meta {
    f: ""
    bwa: ""
    fa_two_pac: ""
    in_dot_fast_a: ""
    out_dot_prefix: ""
  }
}