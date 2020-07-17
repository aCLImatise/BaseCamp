version 1.0

task MapMersDepth {
  input {
    Boolean? count
    Boolean? depth
    Boolean? stats
    String? mers
    String? m
    String? seq
  }
  command <<<
    mapMers-depth \
      ~{true="-count" false="" count} \
      ~{true="-depth" false="" depth} \
      ~{true="-stats" false="" stats} \
      ~{if defined(mers) then ("-mers " +  '"' + mers + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(seq) then ("-seq " +  '"' + seq + '"') else ""}
  >>>
  parameter_meta {
    count: "- report the count (c) of the single kmer that starts at position (p). Format: 's p c'"
    depth: "- report the number (n) of kmers that span position (p).  Format: 's p n'"
    stats: "- report the min (m), max (M), ave (a) count of all mers that span position (p).  Format: 's p m M a t n' (also reports total count (t) and number of kmers (n))"
    mers: ""
    m: ""
    seq: ""
  }
}