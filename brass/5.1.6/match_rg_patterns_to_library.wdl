version 1.0

task MatchRgPatternsToLibrary.pl {
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
    String rearrangements_dot_bed_pe
  }
  command <<<
    match_rg_patterns_to_library.pl \
      ~{rearrangements_dot_bed_pe} \
      ~{if defined(acf) then ("-acf " +  '"' + acf + '"') else ""} \
      ~{if defined(ploidy) then ("-ploidy " +  '"' + ploidy + '"') else ""} \
      ~{true="-verbose" false="" verbose} \
      ~{if defined(max_balanced_rg_dist) then ("-max_balanced_rg_dist " +  '"' + max_balanced_rg_dist + '"') else ""} \
      ~{if defined(max_foldback_distance) then ("-max_foldback_distance " +  '"' + max_foldback_distance + '"') else ""} \
      ~{if defined(min_seg_size_for_cn) then ("-min_seg_size_for_cn " +  '"' + min_seg_size_for_cn + '"') else ""} \
      ~{if defined(min_cn_change) then ("-min_cn_change " +  '"' + min_cn_change + '"') else ""} \
      ~{true="-keep_small_dels_and_tds" false="" keep_small_dels_and_tds} \
      ~{if defined(max_depth) then ("-max_depth " +  '"' + max_depth + '"') else ""}
  >>>
  parameter_meta {
    acf: "Aberrant cell fraction [1.0]"
    ploidy: "Tumour ploidy [2.0]"
    verbose: "Print debugging messages"
    max_balanced_rg_dist: "Maximum distance at which reciprocal rearrangements can still be considered balanced [1000]"
    max_foldback_distance: "Maximum distance for fold-back type rearrangements to be considered as purely fold-back [5000]."
    min_seg_size_for_cn: "Minimum segment size from which CNs estimates are trusted and used for filtering out false positive rearrangements [10000]"
    min_cn_change: "The minimum amount the copy number change across a putative rearrangement call for the rearrangement to be not filtered out (whenever the copy number change across breakpoint can be computed) [0.5]"
    keep_small_dels_and_tds: "Keep TDs and deletions that are smaller than min_seg_size_for_cn? [TRUE]"
    max_depth: "Maximum length of 'rearrangement paths' [3]"
    rearrangements_dot_bed_pe: ""
  }
}