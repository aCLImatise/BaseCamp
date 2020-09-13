version 1.0

task StrainestEst {
  input {
    Int? quality_thr
    Float? min_depth_percentile
    Float? max_depth_percentile
    Int? min_depth_absolute
    Float? min_depth_base
    Float? max_ident_thr
    Int? threads
    String indexed_dot
  }
  command <<<
    strainest est \
      ~{indexed_dot} \
      ~{if defined(quality_thr) then ("--quality-thr " +  '"' + quality_thr + '"') else ""} \
      ~{if defined(min_depth_percentile) then ("--min-depth-percentile " +  '"' + min_depth_percentile + '"') else ""} \
      ~{if defined(max_depth_percentile) then ("--max-depth-percentile " +  '"' + max_depth_percentile + '"') else ""} \
      ~{if defined(min_depth_absolute) then ("--min-depth-absolute " +  '"' + min_depth_absolute + '"') else ""} \
      ~{if defined(min_depth_base) then ("--min-depth-base " +  '"' + min_depth_base + '"') else ""} \
      ~{if defined(max_ident_thr) then ("--max-ident-thr " +  '"' + max_ident_thr + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    quality_thr: "base quality threshold  [default: 20]"
    min_depth_percentile: "discard positions where the depth of\\ncoverage is lower than the\\nMIN_DEPTH_PERCENTILE percentile  [default:\\n10]"
    max_depth_percentile: "discard positions where the depth of\\ncoverage is higher than the\\nMAX_DEPTH_PERCENTILE percentile  [default:\\n90]"
    min_depth_absolute: "discard positions where the depth of\\ncoverage is lower than the\\nMIN_DEPTH_ABSOLUTE  [default: 6]"
    min_depth_base: "filter base counts (set to 0) where they are\\nlower then MIN_DEPTH_BASE x DoC (applied\\nindependently for each allelic position)\\n[default: 0.01]"
    max_ident_thr: "discard genomes with less than MAX_IDENT_THR\\nmaximum identity  [default: 0.95]"
    threads: "number of threads to use in model selection\\n[default: 1]"
    indexed_dot: "EXAMPLES\\nstrainest est snp.dgrp align.bam align -t 4"
  }
  output {
    File out_stdout = stdout()
  }
}