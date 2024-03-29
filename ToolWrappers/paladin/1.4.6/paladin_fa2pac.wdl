version 1.0

task PaladinFa2pac {
  input {
    Boolean? f
    String bwa
    Int fa_two_pac
    String in_dot_fast_a
    String? out_dot_prefix
  }
  command <<<
    paladin fa2pac \
      ~{bwa} \
      ~{fa_two_pac} \
      ~{in_dot_fast_a} \
      ~{out_dot_prefix} \
      ~{if (f) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    f: ""
    bwa: ""
    fa_two_pac: ""
    in_dot_fast_a: ""
    out_dot_prefix: ""
  }
  output {
    File out_stdout = stdout()
  }
}