version 1.0

task SentieonBwaSamse {
  input {
    Int? n
    String? f
    String? r
    String bwa
    String sam_se
    String prefix
    String in_do_tsai
    String in_dot_fq
  }
  command <<<
    sentieon-bwa samse \
      ~{bwa} \
      ~{sam_se} \
      ~{prefix} \
      ~{in_do_tsai} \
      ~{in_dot_fq} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    n: ""
    f: ""
    r: ""
    bwa: ""
    sam_se: ""
    prefix: ""
    in_do_tsai: ""
    in_dot_fq: ""
  }
}