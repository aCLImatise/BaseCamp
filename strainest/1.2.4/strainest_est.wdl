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
    String examples
  }
  command <<<
    strainest est \
      ~{examples} \
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
    min_depth_percentile: "discard positions where the depth of coverage is lower than the MIN_DEPTH_PERCENTILE percentile  [default: 10]"
    max_depth_percentile: "discard positions where the depth of coverage is higher than the MAX_DEPTH_PERCENTILE percentile  [default: 90]"
    min_depth_absolute: "discard positions where the depth of coverage is lower than the MIN_DEPTH_ABSOLUTE  [default: 6]"
    min_depth_base: "filter base counts (set to 0) where they are lower then MIN_DEPTH_BASE x DoC (applied independently for each allelic position) [default: 0.01]"
    max_ident_thr: "discard genomes with less than MAX_IDENT_THR maximum identity  [default: 0.95]"
    threads: "number of threads to use in model selection [default: 1]"
    examples: "strainest est snp.dgrp align.bam align -t 4"
  }
}