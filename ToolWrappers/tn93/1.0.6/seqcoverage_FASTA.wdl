version 1.0

task SeqcoverageFASTA {
  input {
    Boolean? q
    String? d
    String? t
    String? a
    String? o
  }
  command <<<
    seqcoverage FASTA \
      ~{if (q) then "-q" else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    q: ""
    d: ""
    t: ""
    a: ""
    o: ""
  }
  output {
    File out_stdout = stdout()
  }
}