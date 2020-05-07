version 1.0

task Coral {
  input {
    Boolean previewPreview
    Boolean libraryLibraryType
    String minMinBridgingScore
    Int dpDpSolutionSize
    Int dpDpStackSize
    Int maxMaxCluStringFlank
    Int flankFlankTinyLength
    Int flankFlankTinyRatio
    Int minMinSpliceBundAryHits
    Int maxMaxNumCigar
  }
  command <<<
    coral \
      ~{true="--preview" false="" previewPreview} \
      ~{true="--library_type" false="" libraryLibraryType} \
      ~{if defined(minMinBridgingScore) then ("--min_bridging_score " +  '"' + minMinBridgingScore + '"') else ""} \
      ~{if defined(dpDpSolutionSize) then ("--dp_solution_size " +  '"' + dpDpSolutionSize + '"') else ""} \
      ~{if defined(dpDpStackSize) then ("--dp_stack_size " +  '"' + dpDpStackSize + '"') else ""} \
      ~{if defined(maxMaxCluStringFlank) then ("--max_clustring_flank " +  '"' + maxMaxCluStringFlank + '"') else ""} \
      ~{if defined(flankFlankTinyLength) then ("--flank_tiny_length " +  '"' + flankFlankTinyLength + '"') else ""} \
      ~{if defined(flankFlankTinyRatio) then ("--flank_tiny_ratio " +  '"' + flankFlankTinyRatio + '"') else ""} \
      ~{if defined(minMinSpliceBundAryHits) then ("--min_splice_bundary_hits " +  '"' + minMinSpliceBundAryHits + '"') else ""} \
      ~{if defined(maxMaxNumCigar) then ("--max_num_cigar " +  '"' + maxMaxNumCigar + '"') else ""}
  >>>
}