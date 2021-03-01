version 1.0

task Tn93clusterFASTA {
  input {
    Boolean? q
    String? g
    String? m
    String? c
    String? t
    String? l
    String? a
    String? o
  }
  command <<<
    tn93_cluster FASTA \
      ~{if (q) then "-q" else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    q: ""
    g: ""
    m: ""
    c: ""
    t: ""
    l: ""
    a: ""
    o: ""
  }
  output {
    File out_stdout = stdout()
  }
}