version 1.0

task Blasr {
  input {
    Boolean? ignore_hq_regions
    Boolean? place_repeats_randomly
    Boolean? allow_adjacent_indels
    Boolean? fast_sdp
    String? max_score
    Boolean? min_alnlength
    Boolean? min_pct_similarity
    Boolean? min_pct_accuracy
    String? nproc
    String? start
    String? stride
    Boolean? subsample
    String? hole_numbers
    String leftmost
  }
  command <<<
    blasr \
      ~{leftmost} \
      ~{true="--ignoreHQRegions" false="" ignore_hq_regions} \
      ~{true="--placeRepeatsRandomly" false="" place_repeats_randomly} \
      ~{true="--allowAdjacentIndels" false="" allow_adjacent_indels} \
      ~{true="--fastSDP" false="" fast_sdp} \
      ~{if defined(max_score) then ("--maxScore " +  '"' + max_score + '"') else ""} \
      ~{true="--minAlnLength" false="" min_alnlength} \
      ~{true="--minPctSimilarity" false="" min_pct_similarity} \
      ~{true="--minPctAccuracy" false="" min_pct_accuracy} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(stride) then ("--stride " +  '"' + stride + '"') else ""} \
      ~{true="--subsample" false="" subsample} \
      ~{if defined(hole_numbers) then ("--holeNumbers " +  '"' + hole_numbers + '"') else ""}
  >>>
  parameter_meta {
    ignore_hq_regions: "(false)Ignore any hq regions in the region table."
    place_repeats_randomly: "(false)"
    allow_adjacent_indels: "When specified, adjacent insertion or deletions are allowed. Otherwise, adjacent  insertion and deletions are merged into one operation.  Using quality values  to guide pairwise alignments may dictate that the higher probability alignment  contains adjacent insertions or deletions.  Current tools such as GATK do not permit this and so they are not reported by default."
    fast_sdp: "(false) Use a fast heuristic algorithm to speed up sparse dynamic programming."
    max_score: "(-200) Maximum score to output (high is bad, negative good)."
    min_alnlength: "(0) Report alignments only if their lengths are greater than minAlnLength."
    min_pct_similarity: "(0) Report alignments only if their percentage similarity is greater than minPctSimilarity."
    min_pct_accuracy: "(0) Report alignments only if their percentage accuracy is greater than minAccuracy."
    nproc: "(1) Align using N processes.  All large data structures such as the suffix array and  tuple count table are shared."
    start: "(0) Index of the first read to begin aligning. This is useful when multiple instances  are running on the same data, for example when on a multi-rack cluster."
    stride: "(1) Align one read every 'S' reads."
    subsample: "(0) Proportion of reads to randomly subsample (expressed as a decimal) and align."
    hole_numbers: "When specified, only align reads whose ZMW hole numbers are in LIST. LIST is a comma-delimited string of ranges, such as '1,2,3,10-13'. This option only works when reads are in bam, bax.h5 or plx.h5 format."
    leftmost: ": report an alignment which has the best alignmentscore and has the smallest mapping coordinate in any reference."
  }
}