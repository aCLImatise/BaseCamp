version 1.0

task MapMersdepth {
  input {
    Boolean? count
    Boolean? depth
    Boolean? stats
    String? seq
    Int? m
    String? mers
  }
  command <<<
    mapMers_depth \
      ~{if (count) then "-count" else ""} \
      ~{if (depth) then "-depth" else ""} \
      ~{if (stats) then "-stats" else ""} \
      ~{if defined(seq) then ("-seq " +  '"' + seq + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(mers) then ("-mers " +  '"' + mers + '"') else ""}
  >>>
  parameter_meta {
    count: "- report the count (c) of the single kmer that starts at position (p).\\nFormat: 's p c'"
    depth: "- report the number (n) of kmers that span position (p).  Format: 's p n'"
    stats: "- report the min (m), max (M), ave (a) count of all mers that span\\nposition (p).  Format: 's p m M a t n'\\n(also reports total count (t) and number of kmers (n))"
    seq: ""
    m: ""
    mers: ""
  }
  output {
    File out_stdout = stdout()
  }
}