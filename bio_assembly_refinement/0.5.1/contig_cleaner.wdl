version 1.0

task ContigCleaner {
  input {
    Int cutCutOffLength
    Int hitHitPercentId
    File skipSkip
    Boolean debugDebug
  }
  command <<<
    contig_cleaner \
      ~{if defined(cutCutOffLength) then ("--cutoff_length " +  '"' + cutCutOffLength + '"') else ""} \
      ~{if defined(hitHitPercentId) then ("--hit_percent_id " +  '"' + hitHitPercentId + '"') else ""} \
      ~{if defined(skipSkip) then ("--skip " +  '"' + skipSkip + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}