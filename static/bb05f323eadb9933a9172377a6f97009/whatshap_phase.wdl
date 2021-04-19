version 1.0

task WhatshapPhase {
  input {
    File? output_vcf_file
    File? reference
    Boolean? no_reference
    String? tag
    File? output_read_list
    String? algorithm
    Boolean? merge_reads
    Int? internal_downsampling
    Int? mapping_quality
    Boolean? indels
    Boolean? ignore_read_groups
    String? sample
    String? chromosome
    Float? error_rate
    Int? maximum_error_rate
    Int? threshold
    Int? negative_threshold
    Boolean? distrust_genotypes
    Boolean? include_homozygous
    Int? default_gq
    Float? gl_regularize_r
    File? changed_genotype_list
    File? ped
    File? recombination_list
    Float? recomb_rate
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
      ~{if (no_reference) then "--no-reference" else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{if defined(output_read_list) then ("--output-read-list " +  '"' + output_read_list + '"') else ""} \
      ~{if defined(algorithm) then ("--algorithm " +  '"' + algorithm + '"') else ""} \
      ~{if (merge_reads) then "--merge-reads" else ""} \
      ~{if defined(internal_downsampling) then ("--internal-downsampling " +  '"' + internal_downsampling + '"') else ""} \
      ~{if defined(mapping_quality) then ("--mapping-quality " +  '"' + mapping_quality + '"') else ""} \
      ~{if (indels) then "--indels" else ""} \
      ~{if (ignore_read_groups) then "--ignore-read-groups" else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(chromosome) then ("--chromosome " +  '"' + chromosome + '"') else ""} \
      ~{if defined(error_rate) then ("--error-rate " +  '"' + error_rate + '"') else ""} \
      ~{if defined(maximum_error_rate) then ("--maximum-error-rate " +  '"' + maximum_error_rate + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(negative_threshold) then ("--negative-threshold " +  '"' + negative_threshold + '"') else ""} \
      ~{if (distrust_genotypes) then "--distrust-genotypes" else ""} \
      ~{if (include_homozygous) then "--include-homozygous" else ""} \
      ~{if defined(default_gq) then ("--default-gq " +  '"' + default_gq + '"') else ""} \
      ~{if defined(gl_regularize_r) then ("--gl-regularizer " +  '"' + gl_regularize_r + '"') else ""} \
      ~{if defined(changed_genotype_list) then ("--changed-genotype-list " +  '"' + changed_genotype_list + '"') else ""} \
      ~{if defined(ped) then ("--ped " +  '"' + ped + '"') else ""} \
      ~{if defined(recombination_list) then ("--recombination-list " +  '"' + recombination_list + '"') else ""} \
      ~{if defined(recomb_rate) then ("--recombrate " +  '"' + recomb_rate + '"') else ""} \
      ~{if defined(gen_map) then ("--genmap " +  '"' + gen_map + '"') else ""} \
      ~{if (no_genetic_haplo_typing) then "--no-genetic-haplotyping" else ""} \
      ~{if (use_ped_samples) then "--use-ped-samples" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/whatshap:1.1--py39h7cff6ad_0"
  }
  parameter_meta {
    output_vcf_file: "Output VCF file. Add .gz to the file name to get\\ncompressed output. If omitted, use standard output."
    reference: "Reference file. Provide this to detect alleles through\\nre-alignment. If no index (.fai) exists, it will be\\ncreated"
    no_reference: "Detect alleles without requiring a reference, at the\\nexpense of phasing quality (in particular for long\\nreads)"
    tag: "Store phasing information with PS tag (standardized)\\nor HP tag (used by GATK ReadBackedPhasing) (default:\\nPS)"
    output_read_list: "Write reads that have been used for phasing to FILE."
    algorithm: "Phasing algorithm to use (default: whatshap)"
    merge_reads: "Merge reads which are likely to come from the same\\nhaplotype (default: do not merge reads)"
    internal_downsampling: "Coverage reduction parameter in the internal core\\nphasing algorithm. Higher values increase runtime\\n*exponentially* while possibly improving phasing\\nquality marginally. Avoid using this in the normal\\ncase! (default: 15)"
    mapping_quality: "Minimum mapping quality (default: 20)"
    indels: "Also phase indels (default: do not phase indels)"
    ignore_read_groups: "Ignore read groups in BAM/CRAM header and assume all\\nreads come from the same sample."
    sample: "Name of a sample to phase. If not given, all samples\\nin the input VCF are phased. Can be used multiple\\ntimes."
    chromosome: "Name of chromosome to phase. If not given, all\\nchromosomes in the input VCF are phased. Can be used\\nmultiple times."
    error_rate: "The probability that a nucleotide is wrong in read\\nmerging model (default: 0.15)."
    maximum_error_rate: "The maximum error rate of any edge of the read merging\\ngraph before discarding it (default: 0.25)."
    threshold: "The threshold of the ratio between the probabilities\\nthat a pair of reads come from the same haplotype and\\ndifferent haplotypes in the read merging model\\n(default: 1000000)."
    negative_threshold: "The threshold of the ratio between the probabilities\\nthat a pair of reads come from different haplotypes\\nand the same haplotype in the read merging model\\n(default: 1000)."
    distrust_genotypes: "Allow switching variants from hetero- to homozygous in\\nan optimal solution (see documentation)."
    include_homozygous: "Also work on homozygous variants, which might be\\nturned to heterozygous"
    default_gq: "Default genotype quality used as cost of changing a\\ngenotype when no genotype likelihoods are available\\n(default 30)"
    gl_regularize_r: "Constant (float) to be used to regularize genotype\\nlikelihoods read from input VCF (default None)."
    changed_genotype_list: "Write list of changed genotypes to FILE."
    ped: "/FAM         Use pedigree information in PED file to improve\\nphasing (switches to PedMEC algorithm). Columns 2, 3,\\n4 must refer to child, mother, and father sample names\\nas used in the VCF and BAM/CRAM. Other columns are\\nignored."
    recombination_list: "Write putative recombination events to FILE."
    recomb_rate: "Recombination rate in cM/Mb (used with --ped). If\\ngiven, a constant recombination rate is assumed\\n(default: 1.26cM/Mb)."
    gen_map: "File with genetic map (used with --ped) to be used\\ninstead of constant recombination rate, i.e. overrides\\noption --recombrate."
    no_genetic_haplo_typing: "Do not merge blocks that are not connected by reads\\n(i.e. solely based on genotype status). Default: when\\nin --ped mode, merge all blocks that contain at least\\none homozygous genotype in at least one individual\\ninto one block."
    use_ped_samples: "Only work on samples mentioned in the provided PED\\nfile.\\n"
    vcf: "VCF or BCF file with variants to be phased (can be\\ngzip-compressed)"
    phase_input: "BAM, CRAM, VCF or BCF file(s) with phase information,\\neither through sequencing reads (BAM, CRAM) or through\\nphased blocks (VCF, BCF)"
  }
  output {
    File out_stdout = stdout()
    File out_output_vcf_file = "${in_output_vcf_file}"
  }
}