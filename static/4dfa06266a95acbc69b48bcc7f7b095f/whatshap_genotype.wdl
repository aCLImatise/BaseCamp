version 1.0

task WhatshapGenotype {
  input {
    String? output_vcf_file
    String? reference
    Int? max_coverage
    String? mapping_quality
    Boolean? indels
    Boolean? ignore_read_groups
    String? sample
    String? chromosome
    String? gt_qual_threshold
    Boolean? no_priors
    String? prior_output
    String? overhang
    String? constant
    Boolean? affine_gap
    String? gap_start
    String? gap_extend
    String? mismatch
    String? ped
    String? recomb_rate
    File? gen_map
    Boolean? use_ped_samples
    String vcf
    String phase_input
  }
  command <<<
    whatshap genotype \
      ~{vcf} \
      ~{phase_input} \
      ~{if defined(output_vcf_file) then ("--output " +  '"' + output_vcf_file + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(max_coverage) then ("--max-coverage " +  '"' + max_coverage + '"') else ""} \
      ~{if defined(mapping_quality) then ("--mapping-quality " +  '"' + mapping_quality + '"') else ""} \
      ~{true="--indels" false="" indels} \
      ~{true="--ignore-read-groups" false="" ignore_read_groups} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(chromosome) then ("--chromosome " +  '"' + chromosome + '"') else ""} \
      ~{if defined(gt_qual_threshold) then ("--gt-qual-threshold " +  '"' + gt_qual_threshold + '"') else ""} \
      ~{true="--no-priors" false="" no_priors} \
      ~{if defined(prior_output) then ("--prioroutput " +  '"' + prior_output + '"') else ""} \
      ~{if defined(overhang) then ("--overhang " +  '"' + overhang + '"') else ""} \
      ~{if defined(constant) then ("--constant " +  '"' + constant + '"') else ""} \
      ~{true="--affine-gap" false="" affine_gap} \
      ~{if defined(gap_start) then ("--gap-start " +  '"' + gap_start + '"') else ""} \
      ~{if defined(gap_extend) then ("--gap-extend " +  '"' + gap_extend + '"') else ""} \
      ~{if defined(mismatch) then ("--mismatch " +  '"' + mismatch + '"') else ""} \
      ~{if defined(ped) then ("--ped " +  '"' + ped + '"') else ""} \
      ~{if defined(recomb_rate) then ("--recombrate " +  '"' + recomb_rate + '"') else ""} \
      ~{if defined(gen_map) then ("--genmap " +  '"' + gen_map + '"') else ""} \
      ~{true="--use-ped-samples" false="" use_ped_samples}
  >>>
  parameter_meta {
    output_vcf_file: "Output VCF file. Add .gz to the file name to get compressed output. If omitted, use standard output."
    reference: "Reference file. Provide this to detect alleles through re-alignment. If no index (.fai) exists, it will be created"
    max_coverage: "Reduce coverage to at most MAXCOV (default: 15)."
    mapping_quality: "Minimum mapping quality (default: 20)"
    indels: "Also genotype indels (default: genotype only SNPs)"
    ignore_read_groups: "Ignore read groups in BAM header and assume all reads come from the same sample."
    sample: "Name of a sample to genotype. If not given, all samples in the input VCF are genotyped. Can be used multiple times."
    chromosome: "Name of chromosome to genotyped. If not given, all chromosomes in the input VCF are genotyped. Can be used multiple times."
    gt_qual_threshold: "Phred scaled error probability threshold used for genotyping (default: 0). Must be at least 0. If error probability of genotype is higher, genotype ./. is output."
    no_priors: "Skip initial prior genotyping and use uniform priors (default: False)."
    prior_output: "output prior genotype likelihoods to the given file."
    overhang: "When --reference is used, extend alignment by this many bases to left and right when realigning (default: 10)."
    constant: "This constant is used to regularize the priors (default: 0)."
    affine_gap: "When detecting alleles through re-alignment, use affine gap costs (EXPERIMENTAL)."
    gap_start: "gap starting penalty in case affine gap costs are used (default: 10)."
    gap_extend: "gap extend penalty in case affine gap costs are used (default: 7)."
    mismatch: "mismatch cost in case affine gap costs are used (default: 15)"
    ped: "Use pedigree information in PED file to improve genotyping (switches to PedMEC algorithm). Columns 2, 3, 4 must refer to child, mother, and father sample names as used in the VCF and BAM. Other columns are ignored (EXPERIMENTAL)."
    recomb_rate: "Recombination rate in cM/Mb (used with --ped). If given, a constant recombination rate is assumed (default: 1.26cM/Mb)."
    gen_map: "File with genetic map (used with --ped) to be used instead of constant recombination rate, i.e. overrides option --recombrate."
    use_ped_samples: "Only work on samples mentioned in the provided PED file."
    vcf: "VCF file with variants to be genotyped (can be gzip- compressed)"
    phase_input: "BAM or VCF file(s) with phase information, either through sequencing reads (BAM) or through phased blocks (VCF)"
  }
}