version 1.0

task ContigOverlapTrimmer {
  input {
    Boolean noNoTrim
    Boolean trimTrimRevOverlaps
    Int overlapOverlapOffset
    Int overlapOverlapBoundaryMax
    Int overlapOverlapMinLength
    Int overlapOverlapMaxLength
    Int overlapOverlapPercentId
    Float minMinTrimLength
    File skipSkip
    Boolean debugDebug
  }
  command <<<
    contig_overlap_trimmer \
      ~{true="--no_trim" false="" noNoTrim} \
      ~{true="--trim_rev_overlaps" false="" trimTrimRevOverlaps} \
      ~{if defined(overlapOverlapOffset) then ("--overlap_offset " +  '"' + overlapOverlapOffset + '"') else ""} \
      ~{if defined(overlapOverlapBoundaryMax) then ("--overlap_boundary_max " +  '"' + overlapOverlapBoundaryMax + '"') else ""} \
      ~{if defined(overlapOverlapMinLength) then ("--overlap_min_length " +  '"' + overlapOverlapMinLength + '"') else ""} \
      ~{if defined(overlapOverlapMaxLength) then ("--overlap_max_length " +  '"' + overlapOverlapMaxLength + '"') else ""} \
      ~{if defined(overlapOverlapPercentId) then ("--overlap_percent_id " +  '"' + overlapOverlapPercentId + '"') else ""} \
      ~{if defined(minMinTrimLength) then ("--min_trim_length " +  '"' + minMinTrimLength + '"') else ""} \
      ~{if defined(skipSkip) then ("--skip " +  '"' + skipSkip + '"') else ""} \
      ~{true="--debug" false="" debugDebug}
  >>>
}