version 1.0

task WhatshapStats {
  input {
    String? gtf
    String? sample
    String? chr_lengths
    String? tsv
    Boolean? only_sn_vs
    String? block_list
    String? chromosome
    String vcf
  }
  command <<<
    whatshap stats \
      ~{vcf} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(chr_lengths) then ("--chr-lengths " +  '"' + chr_lengths + '"') else ""} \
      ~{if defined(tsv) then ("--tsv " +  '"' + tsv + '"') else ""} \
      ~{true="--only-snvs" false="" only_sn_vs} \
      ~{if defined(block_list) then ("--block-list " +  '"' + block_list + '"') else ""} \
      ~{if defined(chromosome) then ("--chromosome " +  '"' + chromosome + '"') else ""}
  >>>
  parameter_meta {
    gtf: "Write phased blocks to GTF file."
    sample: "Name of the sample to process. If not given, use first sample found in VCF."
    chr_lengths: "File with chromosome lengths (one line per chromosome, tab separated \"<chr> <length>\") needed to compute N50 values."
    tsv: "Filename to write statistics to (tab-separated)."
    only_sn_vs: "Only process SNVs and ignore all other variants."
    block_list: "Filename to write list of all blocks to (one block per line)."
    chromosome: "Name of chromosome to process. If not given, all chromosomes in the input VCF are considered."
    vcf: "Phased VCF file"
  }
}