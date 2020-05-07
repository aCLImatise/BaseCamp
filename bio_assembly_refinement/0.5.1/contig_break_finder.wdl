version 1.0

task ContigBreakFinder {
  input {
    File skipSkip
    Int hitHitPercentId
    Int minMinHitLength
    Boolean noNoRandomGene
    Boolean noNoRename
    Boolean debugDebug
  }
  command <<<
    contig_break_finder \
      ~{if defined(skipSkip) then ("--skip " +  '"' + skipSkip + '"') else ""} \
      ~{if defined(hitHitPercentId) then ("--hit_percent_id " +  '"' + hitHitPercentId + '"') else ""} \
      ~{if defined(minMinHitLength) then ("--min_hit_length " +  '"' + minMinHitLength + '"') else ""} \
      ~{true="--no_random_gene" false="" noNoRandomGene} \
      ~{true="--no_rename" false="" noNoRename} \
      ~{true="--debug" false="" debugDebug}
  >>>
}