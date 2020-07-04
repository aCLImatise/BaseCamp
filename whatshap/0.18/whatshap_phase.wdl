version 1.0

task WhatshapPhase {
  input {
    String? output_vcf_file
    String? reference
    String? tag
    File? output_read_list
    String? algorithm
    Boolean? merge_reads
    Int? max_coverage
    String? mapping_quality
    Boolean? indels
    Boolean? ignore_read_groups
    String? sample
    String? chromosome
    String? error_rate
    String? maximum_error_rate
    String? threshold
    String? negative_threshold
    Boolean? full_genotyping
    Boolean? distrust_genotypes
    Boolean? include_homozygous
    String? default_gq
    String? gl_regularize_r
    File? changed_genotype_list
    String? ped
    File? recombination_list
    String? recomb_rate
    File? gen_map
    Boolean? no_genetic_haplo_typing
    Boolean? use_ped_samples
    String vcf
    String phase_input
  }
  command <<<
    whatshap phase \
      ~{vcf} \
      ~{phase_input} \
      ~{if defined(output_vcf_file) then ("--output " +  '"' + output_vcf_file + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{if defined(output_read_list) then ("--output-read-list " +  '"' + output_read_list + '"') else ""} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
      ~{true="--merge-reads" false="" merge_reads} \
      ~{if defined(max_coverage) then ("--max-coverage " +  '"' + max_coverage + '"') else ""} \
      ~{if defined(mapping_quality) then ("--mapping-quality " +  '"' + mapping_quality + '"') else ""} \
      ~{true="--indels" false="" indels} \
      ~{true="--ignore-read-groups" false="" ignore_read_groups} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(chromosome) then ("--chromosome " +  '"' + chromosome + '"') else ""} \
      ~{if defined(error_rate) then ("--error-rate " +  '"' + error_rate + '"') else ""} \
      ~{if defined(maximum_error_rate) then ("--maximum-error-rate " +  '"' + maximum_error_rate + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(negative_threshold) then ("--negative-threshold " +  '"' + negative_threshold + '"') else ""} \
      ~{true="--full-genotyping" false="" full_genotyping} \
      ~{true="--distrust-genotypes" false="" distrust_genotypes} \
      ~{true="--include-homozygous" false="" include_homozygous} \
      ~{if defined(default_gq) then ("--default-gq " +  '"' + default_gq + '"') else ""} \
      ~{if defined(gl_regularize_r) then ("--gl-regularizer " +  '"' + gl_regularize_r + '"') else ""} \
      ~{if defined(changed_genotype_list) then ("--changed-genotype-list " +  '"' + changed_genotype_list + '"') else ""} \
      ~{if defined(ped) then ("--ped " +  '"' + ped + '"') else ""} \
      ~{if defined(recombination_list) then ("--recombination-list " +  '"' + recombination_list + '"') else ""} \
      ~{if defined(recomb_rate) then ("--recombrate " +  '"' + recomb_rate + '"') else ""} \
      ~{if defined(gen_map) then ("--genmap " +  '"' + gen_map + '"') else ""} \
      ~{true="--no-genetic-haplotyping" false="" no_genetic_haplo_typing} \
      ~{true="--use-ped-samples" false="" use_ped_samples}
  >>>
  parameter_meta {
    output_vcf_file: "Output VCF file. Add .gz to the file name to get compressed output. If omitted, use standard output."
    reference: "Reference file. Provide this to detect alleles through re-alignment. If no index (.fai) exists, it will be created"
    tag: "Store phasing information with PS tag (standardized) or HP tag (used by GATK ReadBackedPhasing) (default: PS)"
    output_read_list: "Write reads that have been used for phasing to FILE."
    algorithm: "Choose an algorithm from whatshap or hapchat (default: whatshap)"
    merge_reads: "Merge reads which are likely to come from the same haplotype (default: do not merge reads)"
    max_coverage: "Coverage reduction parameter in the core phasing algorithm. Phasing quality may improve slightly if this is increased, but runtime increases exponentially! Do not increase beyond 20. (default: 15)"
    mapping_quality: "Minimum mapping quality (default: 20)"
    indels: "Also phase indels (default: do not phase indels)"
    ignore_read_groups: "Ignore read groups in BAM/CRAM header and assume all reads come from the same sample."
    sample: "Name of a sample to phase. If not given, all samples in the input VCF are phased. Can be used multiple times."
    chromosome: "Name of chromosome to phase. If not given, all chromosomes in the input VCF are phased. Can be used multiple times."
    error_rate: "The probability that a nucleotide is wrong in read merging model (default: 0.15)."
    maximum_error_rate: "The maximum error rate of any edge of the read merging graph before discarding it (default: 0.25)."
    threshold: "The threshold of the ratio between the probabilities that a pair of reads come from the same haplotype and different haplotypes in the read merging model (default: 1000000)."
    negative_threshold: "The threshold of the ratio between the probabilities that a pair of reads come from different haplotypes and the same haplotype in the read merging model (default: 1000)."
    full_genotyping: "Completely re-genotype all variants based on read data, ignores all genotype data that might be present in the VCF (EXPERIMENTAL FEATURE)."
    distrust_genotypes: "Allow switching variants from hetero- to homozygous in an optimal solution (see documentation)."
    include_homozygous: "Also work on homozygous variants, which might be turned to heterozygous"
    default_gq: "Default genotype quality used as cost of changing a genotype when no genotype likelihoods are available (default 30)"
    gl_regularize_r: "Constant (float) to be used to regularize genotype likelihoods read from input VCF (default None)."
    changed_genotype_list: "Write list of changed genotypes to FILE."
    ped: "Use pedigree information in PED file to improve phasing (switches to PedMEC algorithm). Columns 2, 3, 4 must refer to child, mother, and father sample names as used in the VCF and BAM/CRAM. Other columns are ignored."
    recombination_list: "Write putative recombination events to FILE."
    recomb_rate: "Recombination rate in cM/Mb (used with --ped). If given, a constant recombination rate is assumed (default: 1.26cM/Mb)."
    gen_map: "File with genetic map (used with --ped) to be used instead of constant recombination rate, i.e. overrides option --recombrate."
    no_genetic_haplo_typing: "Do not merge blocks that are not connected by reads (i.e. solely based on genotype status). Default: when in --ped mode, merge all blocks that contain at least one homozygous genotype in at least one individual into one block."
    use_ped_samples: "Only work on samples mentioned in the provided PED file."
    vcf: "VCF file with variants to be phased (can be gzip- compressed)"
    phase_input: "BAM, CRAM or VCF file(s) with phase information, either through sequencing reads (BAM/CRAM) or through phased blocks (VCF)"
  }
}