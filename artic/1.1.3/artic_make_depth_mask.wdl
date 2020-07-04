version 1.0

task ArticMakeDepthMask {
  input {
    Boolean? warn_rg_coverage
    Boolean? ignore_deletions
    Boolean? store_rg_depths
    String? depth
  }
  command <<<
    artic_make_depth_mask \
      ~{true="--warn-rg-coverage" false="" warn_rg_coverage} \
      ~{true="--ignore-deletions" false="" ignore_deletions} \
      ~{true="--store-rg-depths" false="" store_rg_depths} \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""}
  >>>
  parameter_meta {
    warn_rg_coverage: "if set, a warning will be issued if the BAM file has pileup regions where coverage for each readgroup < min. depth BUT the combined coverage is > min. depth"
    ignore_deletions: "if set, positional depth counts will ignore reads with reference deletions (i.e. evaluates positional depths on ref matches, not read span"
    store_rg_depths: "if set, positional depth counts for each readgroup written to file (filename = <outfile>.<readgroup>.depths)"
    depth: ""
  }
}