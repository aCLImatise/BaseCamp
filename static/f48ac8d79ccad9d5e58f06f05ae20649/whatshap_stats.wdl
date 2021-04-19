version 1.0

task WhatshapStats {
  input {
    File? gtf
    String? sample
    File? chr_lengths
    File? tsv
    Boolean? only_sn_vs
    File? block_list
    String? chromosome
  }
  command <<<
    whatshap stats \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(chr_lengths) then ("--chr-lengths " +  '"' + chr_lengths + '"') else ""} \
      ~{if defined(tsv) then ("--tsv " +  '"' + tsv + '"') else ""} \
      ~{if (only_sn_vs) then "--only-snvs" else ""} \
      ~{if defined(block_list) then ("--block-list " +  '"' + block_list + '"') else ""} \
      ~{if defined(chromosome) then ("--chromosome " +  '"' + chromosome + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/whatshap:1.1--py39h7cff6ad_0"
  }
  parameter_meta {
    gtf: "Write phased blocks to GTF file."
    sample: "Name of the sample to process. If not given, use first\\nsample found in VCF."
    chr_lengths: "Read chromosome lengths from FILE (one line per\\nchromosome, tab separated '<chr> <length>'). Needed to\\ncompute N50 values."
    tsv: "Write statistics in tab-separated value format to FILE"
    only_sn_vs: "Only process SNVs and ignore all other variants."
    block_list: "Write list of all blocks to FILE (one block per line)"
    chromosome: "Name of chromosome to process. If not given, all\\nchromosomes in the input VCF are considered. Can be\\nused multiple times\\n"
  }
  output {
    File out_stdout = stdout()
  }
}