version 1.0

task TbprofilerOddsRatios.py {
  input {
    String? samples
    String? dir
    String? db
    String? variant_format
    String meta_data
  }
  command <<<
    tbprofiler_odds_ratios.py \
      ~{meta_data} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(variant_format) then ("--variant-format " +  '"' + variant_format + '"') else ""}
  >>>
  parameter_meta {
    samples: "NGS Platform (default: None)"
    dir: "NGS Platform (default: results/)"
    db: "NGS Platform (default: tbdb)"
    variant_format: "NGS Platform (default: hgvs)"
    meta_data: "Meta data"
  }
}