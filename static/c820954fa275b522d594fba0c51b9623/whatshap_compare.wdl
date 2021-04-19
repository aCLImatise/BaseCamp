version 1.0

task WhatshapCompare {
  input {
    String? sample
    String? names
    File? tsv_pairwise
    File? tsv_multiway
    Boolean? only_sn_vs
    File? switch_error_bed
    Int? plot_block_sizes
    Int? plot_sum_of_block_sizes
    File? longest_block_tsv
    Int? ploidy
    String vcf
  }
  command <<<
    whatshap compare \
      ~{vcf} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(tsv_pairwise) then ("--tsv-pairwise " +  '"' + tsv_pairwise + '"') else ""} \
      ~{if defined(tsv_multiway) then ("--tsv-multiway " +  '"' + tsv_multiway + '"') else ""} \
      ~{if (only_sn_vs) then "--only-snvs" else ""} \
      ~{if defined(switch_error_bed) then ("--switch-error-bed " +  '"' + switch_error_bed + '"') else ""} \
      ~{if defined(plot_block_sizes) then ("--plot-blocksizes " +  '"' + plot_block_sizes + '"') else ""} \
      ~{if defined(plot_sum_of_block_sizes) then ("--plot-sum-of-blocksizes " +  '"' + plot_sum_of_block_sizes + '"') else ""} \
      ~{if defined(longest_block_tsv) then ("--longest-block-tsv " +  '"' + longest_block_tsv + '"') else ""} \
      ~{if defined(ploidy) then ("--ploidy " +  '"' + ploidy + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/whatshap:1.1--py39h7cff6ad_0"
  }
  parameter_meta {
    sample: "Name of the sample to process. If not given, use first\\nsample found in VCF."
    names: "Comma-separated list of data set names to be used in\\nthe report (in same order as VCFs)."
    tsv_pairwise: "Filename to write comparison results from pair-wise\\ncomparison to (tab-separated)."
    tsv_multiway: "Filename to write comparison results from multiway\\ncomparison to (tab-separated). Only for diploid vcfs."
    only_sn_vs: "Only process SNVs and ignore all other variants."
    switch_error_bed: "Write BED file with switch error positions to given\\nfilename. Only for diploid vcfs."
    plot_block_sizes: "Write PDF file with a block length histogram to given\\nfilename (requires matplotlib)."
    plot_sum_of_block_sizes: "Write PDF file with a block length histogram in which\\nthe height of each bar corresponds to the sum of\\nlengths."
    longest_block_tsv: "Write position-wise agreement of longest joint blocks\\nin each chromosome to tab-separated file. Only for\\ndiploid vcfs."
    ploidy: "The ploidy of the sample(s) (default: 2).\\n"
    vcf: "At least two phased VCF files to be compared."
  }
  output {
    File out_stdout = stdout()
  }
}