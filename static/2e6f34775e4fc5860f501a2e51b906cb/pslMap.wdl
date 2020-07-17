version 1.0

task PslMap.pl {
  input {
    String in
    String psl_input_mrna
    String out
    String filter_unspliced
    Int min_match
  }
  command <<<
    pslMap.pl \
      ~{in} \
      ~{psl_input_mrna} \
      ~{out} \
      ~{filter_unspliced} \
      ~{min_match}
  >>>
  parameter_meta {
    in: "psl input file, e.g. from an alignment of transcript reads against mRNA sequences"
    psl_input_mrna: "psl input file, e.g. from an alignment of mRNA sequences against a genome The queries of map must be the targets of in."
    out: "psl output file, e.g. the inferred alignment of transcript reads against the genome"
    filter_unspliced: "alignments in in.psl that do not cover an intron in map.psl are not reported in out.psl"
    min_match: "filter out alignments with a number of matches (first column) that is below this (default: 0)"
  }
}