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
      ~{if (f) then "-f" else ""}
  >>>
  parameter_meta {
    f: ""
    in_dot_fast_a: ""
    out_dot_prefix: ""
  }
  output {
    File out_stdout = stdout()
  }
}