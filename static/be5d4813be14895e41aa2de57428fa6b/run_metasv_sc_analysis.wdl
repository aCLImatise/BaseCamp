version 1.0

task RunMetasvScAnalysis.py {
  input {
    String? overlap_ratio
    String? mean_read_length
    String? mean_read_coverage
    Int? min_ins_cov_frac
    Int? max_ins_cov_frac
    String? assembly_max_tools
    String? other_scale
    Array[String] bams
  }
  command <<<
    run_metasv_sc_analysis.py \
      ~{if defined(overlap_ratio) then ("--overlap_ratio " +  '"' + overlap_ratio + '"') else ""} \
      ~{if defined(mean_read_length) then ("--mean_read_length " +  '"' + mean_read_length + '"') else ""} \
      ~{if defined(mean_read_coverage) then ("--mean_read_coverage " +  '"' + mean_read_coverage + '"') else ""} \
      ~{if defined(min_ins_cov_frac) then ("--min_ins_cov_frac " +  '"' + min_ins_cov_frac + '"') else ""} \
      ~{if defined(max_ins_cov_frac) then ("--max_ins_cov_frac " +  '"' + max_ins_cov_frac + '"') else ""} \
      ~{if defined(assembly_max_tools) then ("--assembly_max_tools " +  '"' + assembly_max_tools + '"') else ""} \
      ~{if defined(other_scale) then ("--other_scale " +  '"' + other_scale + '"') else ""} \
      ~{if defined(bams) then ("--bams " +  '"' + bams + '"') else ""}
  >>>
  parameter_meta {
    overlap_ratio: "Reciprocal overlap ratio (default: 0.5)"
    mean_read_length: "Mean read length (default: 100)"
    mean_read_coverage: "Mean read coverage (default: 50)"
    min_ins_cov_frac: "Minimum read coverage around the insertion breakpoint. (default: 0.5)"
    max_ins_cov_frac: "Maximum read coverage around the insertion breakpoint. (default: 1.5)"
    assembly_max_tools: "Skip assembly if more than this many tools support a call (default 1) (default: 1)"
    other_scale: "Parameter to control none SV type resolution (default: 5)"
    bams: ""
  }
}