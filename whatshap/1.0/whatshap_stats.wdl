version 1.0

task WhatshapStats {
  input {
    File? gtf
    String? sample
    Int? chr_lengths
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
  parameter_meta {
    gtf: "Write phased blocks to GTF file."
    sample: "Name of the sample to process. If not given, use first\\nsample found in VCF."
    chr_lengths: "File with chromosome lengths (one line per chromosome,\\ntab separated '<chr> <length>') needed to compute N50\\nvalues."
    tsv: "Filename to write statistics to (tab-separated)."
    only_sn_vs: "Only process SNVs and ignore all other variants."
    block_list: "Filename to write list of all blocks to (one block per\\nline)."
    chromosome: "Name of chromosome to process. If not given, all\\nchromosomes in the input VCF are considered.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}