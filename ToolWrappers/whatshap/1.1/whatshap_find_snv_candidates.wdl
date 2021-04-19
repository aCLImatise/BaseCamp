version 1.0

task WhatshapFindSnvCandidates {
  input {
    Int? min_abs
    Int? min_rel
    Boolean? multi_allelic_s
    String? sample
    String? chromosome
    File? output_vcf_file
    Boolean? pac_bio
    Boolean? nano_pore
    Boolean? illumina
    String ref
    String bam
  }
  command <<<
    whatshap find_snv_candidates \
      ~{ref} \
      ~{bam} \
      ~{if defined(min_abs) then ("--minabs " +  '"' + min_abs + '"') else ""} \
      ~{if defined(min_rel) then ("--minrel " +  '"' + min_rel + '"') else ""} \
      ~{if (multi_allelic_s) then "--multi-allelics" else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(chromosome) then ("--chromosome " +  '"' + chromosome + '"') else ""} \
      ~{if defined(output_vcf_file) then ("--output " +  '"' + output_vcf_file + '"') else ""} \
      ~{if (pac_bio) then "--pacbio" else ""} \
      ~{if (nano_pore) then "--nanopore" else ""} \
      ~{if (illumina) then "--illumina" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/whatshap:1.1--py39h7cff6ad_0"
  }
  parameter_meta {
    min_abs: "Minimum absolute ALT depth to call a SNP (default: 3)."
    min_rel: "Minimum relative ALT depth to call a SNP (default:\\n0.25)."
    multi_allelic_s: "Also output multi-allelic sites, if not given only the\\nbest ALT allele is reported (if unique)."
    sample: "Put this sample column into VCF (default: output\\nsites-only VCF)."
    chromosome: "Name of chromosome to process. If not given, all\\nchromosomes are processed."
    output_vcf_file: "Output VCF file."
    pac_bio: "Input is PacBio. Sets minrel=0.25 and minabs=3."
    nano_pore: "Input is Nanopore. Sets minrel=0.4 and minabs=3."
    illumina: "Input is Illumina. Sets minrel=0.25 and minabs=3."
    ref: "FASTA with reference genome"
    bam: "BAM file"
  }
  output {
    File out_stdout = stdout()
    File out_output_vcf_file = "${in_output_vcf_file}"
  }
}