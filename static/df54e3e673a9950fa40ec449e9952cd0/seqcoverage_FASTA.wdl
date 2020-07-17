version 1.0

task SeqcoverageFASTA {
  input {
    String? o
    String? a
    String? t
    String? d
    Boolean? q
  }
  command <<<
    seqcoverage FASTA \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{true="-q" false="" q}
  >>>
  parameter_meta {
    o: ""
    a: ""
    t: ""
    d: ""
    q: ""
  }
}