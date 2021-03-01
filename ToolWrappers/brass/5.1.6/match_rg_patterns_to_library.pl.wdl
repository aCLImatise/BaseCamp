version 1.0

task MatchRgPatternsToLibrarypl {
  input {
    Float? acf
    Float? ploidy
    Boolean? verbose
    Int? max_balanced_rg_dist
    Int? max_foldback_distance
    Int? min_seg_size_for_cn
    Float? min_cn_change
    Boolean? keep_small_dels_and_tds
    Int? max_depth
    String cn_segments_dot_bed
  }
  command <<<
    match_rg_patterns_to_library_pl \
      ~{cn_segments_dot_bed} \
      ~{if defined(acf) then ("-acf " +  '"' + acf + '"') else ""} \
      ~{if defined(ploidy) then ("-ploidy " +  '"' + ploidy + '"') else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if defined(max_balanced_rg_dist) then ("-max_balanced_rg_dist " +  '"' + max_balanced_rg_dist + '"') else ""} \
      ~{if defined(max_foldback_distance) then ("-max_foldback_distance " +  '"' + max_foldback_distance + '"') else ""} \
      ~{if defined(min_seg_size_for_cn) then ("-min_seg_size_for_cn " +  '"' + min_seg_size_for_cn + '"') else ""} \
      ~{if defined(min_cn_change) then ("-min_cn_change " +  '"' + min_cn_change + '"') else ""} \
      ~{if (keep_small_dels_and_tds) then "-keep_small_dels_and_tds" else ""} \
      ~{if defined(max_depth) then ("-max_depth " +  '"' + max_depth + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    acf: "Aberrant cell fraction [1.0]"
    ploidy: "Tumour ploidy [2.0]"
    verbose: "Print debugging messages"
    max_balanced_rg_dist: "Maximum distance at which reciprocal\\nrearrangements can still be considered balanced\\n[1000]"
    max_foldback_distance: "Maximum distance for fold-back type\\nrearrangements to be considered as purely\\nfold-back [5000]."
    min_seg_size_for_cn: "Minimum segment size from which CNs estimates\\nare trusted and used for filtering out false\\npositive rearrangements [10000]"
    min_cn_change: "The minimum amount the copy number change\\nacross a putative rearrangement call for the\\nrearrangement to be not filtered out (whenever\\nthe copy number change across breakpoint can be\\ncomputed) [0.5]"
    keep_small_dels_and_tds: "Keep TDs and deletions that are smaller than\\nmin_seg_size_for_cn? [TRUE]"
    max_depth: "Maximum length of 'rearrangement paths' [3]"
    cn_segments_dot_bed: "REARRANGEMENTS.BEDPE is a BEDPE file with rearrangement ID in column 7"
  }
  output {
    File out_stdout = stdout()
  }
}