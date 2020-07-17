version 1.0

task BpSreformat.pl {
  input {
    String no_interleaved
    String id_line_break
    String percentages
    String flat
    String line_length
    String mr_bayes
  }
  command <<<
    bp_sreformat.pl \
      ~{no_interleaved} \
      ~{id_line_break} \
      ~{percentages} \
      ~{flat} \
      ~{line_length} \
      ~{mr_bayes}
  >>>
  parameter_meta {
    no_interleaved: "-- for phylip,non-interleaved format"
    id_line_break: "-- for phylip, makes it molphy format"
    percentages: "-- for clustalw, show % id per line"
    flat: "-- don't show start-end in seqid"
    line_length: "-- line length for clustalw"
    mr_bayes: "-- for MrBayes proper NEXUS output"
  }
}