version 1.0

task BwaSamse {
  input {
    String? r
    String? f
    Int? n
    String prefix
    String in_do_tsai
    String in_dot_fq
  }
  command <<<
    bwa samse \
      ~{prefix} \
      ~{in_do_tsai} \
      ~{in_dot_fq} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""}
  >>>
  parameter_meta {
    r: ""
    f: ""
    n: ""
    prefix: ""
    in_do_tsai: ""
    in_dot_fq: ""
  }
  output {
    File out_stdout = stdout()
  }
}