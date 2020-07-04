version 1.0

task KmerAnalysis.plSTRING {
  input {
    File? f
    String? d
    String? o
    Int? k
    Boolean? t
  }
  command <<<
    kmer_analysis.pl STRING \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{true="-t" false="" t}
  >>>
  parameter_meta {
    f: ""
    d: ""
    o: ""
    k: ""
    t: ""
  }
}