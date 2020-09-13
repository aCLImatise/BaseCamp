version 1.0

task GetDifferentialPeaks {
  input {
    Boolean? fold_enrichment_background
    Boolean? poisson_enrichment_pvalue
    Boolean? same
    Boolean? rev
    Boolean? size
    Boolean? fixed
    Boolean? strand
    Boolean? tag_adjust
    Boolean? tag_adjust_bg
    Boolean? tbp
    Boolean? tbp_bg
    File peak_file
    Directory target_tag_directory
    Directory background_tag_directory
  }
  command <<<
    getDifferentialPeaks \
      ~{peak_file} \
      ~{target_tag_directory} \
      ~{background_tag_directory} \
      ~{if (fold_enrichment_background) then "-F" else ""} \
      ~{if (poisson_enrichment_pvalue) then "-P" else ""} \
      ~{if (same) then "-same" else ""} \
      ~{if (rev) then "-rev" else ""} \
      ~{if (size) then "-size" else ""} \
      ~{if (fixed) then "-fixed" else ""} \
      ~{if (strand) then "-strand" else ""} \
      ~{if (tag_adjust) then "-tagAdjust" else ""} \
      ~{if (tag_adjust_bg) then "-tagAdjustBg" else ""} \
      ~{if (tbp) then "-tbp" else ""} \
      ~{if (tbp_bg) then "-tbpBg" else ""}
  >>>
  parameter_meta {
    fold_enrichment_background: "<#> (fold enrichment over background tag count, default: 4.0)"
    poisson_enrichment_pvalue: "<#> (poisson enrichment p-value over background tag count, default: 0.0001)"
    same: "(return similar peaks instead of different peaks)"
    rev: "(return peaks with higher tag counts in background instead of target library)"
    size: "<#> (size of region around peak to count tags, default: -fixed)"
    fixed: "(Count tags relative to actual peak start and stop, default)\\n\\\"-size given\\\" is the same as \\\"-fixed\\\""
    strand: "<both|+|-> (Strand [relative to peak] to count tags from, default:both)"
    tag_adjust: "<#> (bp to shift tag positions to estimate fragment centers, default: auto)\\n'-tagAdjust auto' uses half of the estimated tag fragment length"
    tag_adjust_bg: "<#> (bp to shift background tag positions to estimate fragment centers, default: auto)\\n'-tagAdjustBg auto' uses half of the estimated tag fragment length"
    tbp: "<#> (Maximum tags per bp to count, 0 = no limit, default: 0)"
    tbp_bg: "<#> (Maximum background tags per bp to count, 0 = no limit, default: 0)"
    peak_file: ""
    target_tag_directory: ""
    background_tag_directory: ""
  }
  output {
    File out_stdout = stdout()
  }
}