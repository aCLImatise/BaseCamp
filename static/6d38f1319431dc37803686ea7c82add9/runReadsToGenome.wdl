version 1.0

task RunReadsToGenome.pl {
  input {
    Int? min_in_del_candidate_depth
    Boolean? min_alt_bases
    Boolean? max_depth
    Boolean? min_depth
    Boolean? snp_gap_filter
    String perl
  }
  command <<<
    runReadsToGenome.pl \
      ~{perl} \
      ~{if defined(min_in_del_candidate_depth) then ("-min_indel_candidate_depth " +  '"' + min_in_del_candidate_depth + '"') else ""} \
      ~{true="-min_alt_bases" false="" min_alt_bases} \
      ~{true="-max_depth" false="" max_depth} \
      ~{true="-min_depth" false="" min_depth} \
      ~{true="-snp_gap_filter" false="" snp_gap_filter}
  >>>
  parameter_meta {
    min_in_del_candidate_depth: "number gapped reads for indel candidates [3]"
    min_alt_bases: "minimum number of alternate bases [3]"
    max_depth: "maximum read depth [1000000]"
    min_depth: "minimum read depth [7]"
    snp_gap_filter: "SNP within INT bp around a gap to be filtered [3]"
    perl: ""
  }
}