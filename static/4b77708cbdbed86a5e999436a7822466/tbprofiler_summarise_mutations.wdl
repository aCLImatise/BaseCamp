version 1.0

task TbprofilerSummariseMutations.py {
  input {
    String? dir
    String? summary
    Boolean? pct
    String? columns
    Boolean? non_dr
    String samples
  }
  command <<<
    tbprofiler_summarise_mutations.py \
      ~{samples} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{true="--pct" false="" pct} \
      ~{if defined(columns) then ("--columns " +  '"' + columns + '"') else ""} \
      ~{true="--non-dr" false="" non_dr}
  >>>
  parameter_meta {
    dir: "NGS Platform (default: results)"
    summary: "NGS Platform (default: None)"
    pct: "NGS Platform (default: False)"
    columns: "NGS Platform (default: None)"
    non_dr: "NGS Platform (default: False)"
    samples: "NGS Platform"
  }
}