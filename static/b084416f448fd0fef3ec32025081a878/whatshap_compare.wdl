version 1.0

task WhatshapCompare {
  input {
    String? sample
    String? names
    String? tsv_pairwise
    String? tsv_multiway
    Boolean? only_sn_vs
    String? switch_error_bed
    String? plot_block_sizes
    String? plot_sum_of_block_sizes
    String? longest_block_tsv
    String vcf
  }
  command <<<
    whatshap compare \
      ~{vcf} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(tsv_pairwise) then ("--tsv-pairwise " +  '"' + tsv_pairwise + '"') else ""} \
      ~{if defined(tsv_multiway) then ("--tsv-multiway " +  '"' + tsv_multiway + '"') else ""} \
      ~{true="--only-snvs" false="" only_sn_vs} \
      ~{if defined(switch_error_bed) then ("--switch-error-bed " +  '"' + switch_error_bed + '"') else ""} \
      ~{if defined(plot_block_sizes) then ("--plot-blocksizes " +  '"' + plot_block_sizes + '"') else ""} \
      ~{if defined(plot_sum_of_block_sizes) then ("--plot-sum-of-blocksizes " +  '"' + plot_sum_of_block_sizes + '"') else ""} \
      ~{if defined(longest_block_tsv) then ("--longest-block-tsv " +  '"' + longest_block_tsv + '"') else ""}
  >>>
  parameter_meta {
    sample: "Name of the sample to process. If not given, use first sample found in VCF."
    names: "Comma-separated list of data set names to be used in the report (in same order as VCFs)."
    tsv_pairwise: "Filename to write comparison results from pair-wise comparison to (tab-separated)."
    tsv_multiway: "Filename to write comparison results from multiway comparison to (tab-separated)."
    only_sn_vs: "Only process SNVs and ignore all other variants."
    switch_error_bed: "Write BED file with switch error positions to given filename."
    plot_block_sizes: "Write PDF file with a block length histogram to given filename (requires matplotlib)."
    plot_sum_of_block_sizes: "Write PDF file with a block length histogram in which the height of each bar corresponds to the sum of lengths."
    longest_block_tsv: "Write position-wise agreement of longest joint blocks in each chromosome to tab-separated file."
    vcf: "At least two phased VCF files to be compared."
  }
}