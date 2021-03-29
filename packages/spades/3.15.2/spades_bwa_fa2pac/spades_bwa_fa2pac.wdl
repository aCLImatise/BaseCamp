version 1.0

task SpadesbwaFa2pac {
  input {
    Boolean? f
    String bwa
    Int fa_two_pac
    String in_dot_fast_a
    String? out_dot_prefix
  }
  command <<<
    spades_bwa fa2pac \
      ~{bwa} \
      ~{fa_two_pac} \
      ~{in_dot_fast_a} \
      ~{out_dot_prefix} \
      ~{if (f) then "-f" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/spades:3.15.2--h633aebb_0"
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