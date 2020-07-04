version 1.0

task GetDifferentialPeaks {
  input {
    Boolean? fold_enrichment_background
    Boolean? poisson_enrichment_pvalue
    Boolean? same
    Boolean? rev
    Boolean? size
    Boolean? fixed
    Boolean? tbp
    Boolean? tbp_bg
    String peak_file
    String target_tag_directory
    String background_tag_directory
  }
  command <<<
    getDifferentialPeaks \
      ~{peak_file} \
      ~{target_tag_directory} \
      ~{background_tag_directory} \
      ~{true="-F" false="" fold_enrichment_background} \
      ~{true="-P" false="" poisson_enrichment_pvalue} \
      ~{true="-same" false="" same} \
      ~{true="-rev" false="" rev} \
      ~{true="-size" false="" size} \
      ~{true="-fixed" false="" fixed} \
      ~{true="-tbp" false="" tbp} \
      ~{true="-tbpBg" false="" tbp_bg}
  >>>
  parameter_meta {
    fold_enrichment_background: "<#> (fold enrichment over background tag count, default: 4.0)"
    poisson_enrichment_pvalue: "<#> (poisson enrichment p-value over background tag count, default: 0.0001)"
    same: "(return similar peaks instead of different peaks)"
    rev: "(return peaks with higher tag counts in background instead of target library)"
    size: "<#> (size of region around peak to count tags, default: -fixed)"
    fixed: "(Count tags relative to actual peak start and stop, default) \"-size given\" is the same as \"-fixed\""
    tbp: "<#> (Maximum tags per bp to count, 0 = no limit, default: 0)"
    tbp_bg: "<#> (Maximum background tags per bp to count, 0 = no limit, default: 0)"
    peak_file: ""
    target_tag_directory: ""
    background_tag_directory: ""
  }
}