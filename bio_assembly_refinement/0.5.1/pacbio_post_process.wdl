version 1.0

task PacbioPostProcess {
  input {
    Int minMinContigLength
    Int containedContainedPercentMatch
    Int overlapOverlapOffset
    Int overlapOverlapBoundaryMax
    Int overlapOverlapMinLength
    Int overlapOverlapMaxLength
    Float minMinTrimLength
    Boolean noNoTrim
    Boolean trimTrimRevOverlaps
    Int overlapOverlapPercentIdentity
    Int dnaDnaAHitPercentIdentity
    Int dnaDnaAHitLengthMinimum
    Boolean noNoBsub
    String reassemblyReassemblyDir
    Boolean debugDebug
  }
  command <<<
    pacbio_post_process \
      ~{if defined(minMinContigLength) then ("--min_contig_length " +  '"' + minMinContigLength + '"') else ""} \
      ~{if defined(containedContainedPercentMatch) then ("--contained_percent_match " +  '"' + containedContainedPercentMatch + '"') else ""} \
      ~{if defined(overlapOverlapOffset) then ("--overlap_offset " +  '"' + overlapOverlapOffset + '"') else ""} \
      ~{if defined(overlapOverlapBoundaryMax) then ("--overlap_boundary_max " +  '"' + overlapOverlapBoundaryMax + '"') else ""} \
      ~{if defined(overlapOverlapMinLength) then ("--overlap_min_length " +  '"' + overlapOverlapMinLength + '"') else ""} \
      ~{if defined(overlapOverlapMaxLength) then ("--overlap_max_length " +  '"' + overlapOverlapMaxLength + '"') else ""} \
      ~{if defined(minMinTrimLength) then ("--min_trim_length " +  '"' + minMinTrimLength + '"') else ""} \
      ~{true="--no_trim" false="" noNoTrim} \
      ~{true="--trim_rev_overlaps" false="" trimTrimRevOverlaps} \
      ~{if defined(overlapOverlapPercentIdentity) then ("--overlap_percent_identity " +  '"' + overlapOverlapPercentIdentity + '"') else ""} \
      ~{if defined(dnaDnaAHitPercentIdentity) then ("--dnaA_hit_percent_identity " +  '"' + dnaDnaAHitPercentIdentity + '"') else ""} \
      ~{if defined(dnaDnaAHitLengthMinimum) then ("--dnaA_hit_length_minimum " +  '"' + dnaDnaAHitLengthMinimum + '"') else ""} \
      ~{true="--no_bsub" false="" noNoBsub} \
      ~{if defined(reassemblyReassemblyDir) then ("--reassembly_dir " +  '"' + reassemblyReassemblyDir + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}