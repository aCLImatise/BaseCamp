version 1.0

task RunReadsToGenome.pl {
  input {
    Int minMinInDelCandidateDepth
    Boolean minMinAltBases
    Boolean maxMaxDepth
    Boolean minMinDepth
    Boolean snpSnpGapFilter
  }
  command <<<
    runReadsToGenome.pl \
      ~{if defined(minMinInDelCandidateDepth) then ("-min_indel_candidate_depth " +  '"' + minMinInDelCandidateDepth + '"') else ""} \
      ~{true="-min_alt_bases" false="" minMinAltBases} \
      ~{true="-max_depth" false="" maxMaxDepth} \
      ~{true="-min_depth" false="" minMinDepth} \
      ~{true="-snp_gap_filter" false="" snpSnpGapFilter}
  >>>
}