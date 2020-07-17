version 1.0

task Tn93ClusterFASTA {
  input {
    String? o
    String? a
    String? l
    String? t
    String? c
    String? m
    String? g
    Boolean? q
  }
  command <<<
    tn93-cluster FASTA \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{true="-q" false="" q}
  >>>
  parameter_meta {
    o: ""
    a: ""
    l: ""
    t: ""
    c: ""
    m: ""
    g: ""
    q: ""
  }
}