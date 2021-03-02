version 1.0

task SpadesbwaSamse {
  input {
    String? r
    String? f
    Int? n
    String bwa
    String sam_se
    String prefix
    String in_do_tsai
    String in_dot_fq
  }
  command <<<
    spades_bwa samse \
      ~{bwa} \
      ~{sam_se} \
      ~{prefix} \
      ~{in_do_tsai} \
      ~{in_dot_fq} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/spades:3.15.0--h633aebb_0"
  }
  parameter_meta {
    r: ""
    f: ""
    n: ""
    bwa: ""
    sam_se: ""
    prefix: ""
    in_do_tsai: ""
    in_dot_fq: ""
  }
  output {
    File out_stdout = stdout()
  }
}