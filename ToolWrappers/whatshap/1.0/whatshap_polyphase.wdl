version 1.0

task WhatshapPolyphase {
  input {
    String? ploidy
    File? output_vcf_file
    File? reference
    String? tag
    File? output_read_list
    Int? mapping_quality
    Boolean? indels
    Boolean? ignore_read_groups
    String? sample
    String? chromosome
    Boolean? verify_genotypes
    Int? min_overlap
    Int? ce_refinements
    Int? block_cut_sensitivity
    String vcf
    String phase_input
  }
  command <<<
    whatshap polyphase \
      ~{vcf} \
      ~{phase_input} \
      ~{if defined(ploidy) then ("--ploidy " +  '"' + ploidy + '"') else ""} \
      ~{if defined(output_vcf_file) then ("--output " +  '"' + output_vcf_file + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{if defined(output_read_list) then ("--output-read-list " +  '"' + output_read_list + '"') else ""} \
      ~{if defined(mapping_quality) then ("--mapping-quality " +  '"' + mapping_quality + '"') else ""} \
      ~{if (indels) then "--indels" else ""} \
      ~{if (ignore_read_groups) then "--ignore-read-groups" else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(chromosome) then ("--chromosome " +  '"' + chromosome + '"') else ""} \
      ~{if (verify_genotypes) then "--verify-genotypes" else ""} \
      ~{if defined(min_overlap) then ("--min-overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(ce_refinements) then ("--ce-refinements " +  '"' + ce_refinements + '"') else ""} \
      ~{if defined(block_cut_sensitivity) then ("--block-cut-sensitivity " +  '"' + block_cut_sensitivity + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ploidy: "The ploidy of the sample(s). Argument is required."
    output_vcf_file: "Output VCF file. Add .gz to the file name to get\\ncompressed output. If omitted, use standard output."
    reference: "Reference file. Provide this to detect alleles through\\nre-alignment. If no index (.fai) exists, it will be\\ncreated"
    tag: "Store phasing information with PS tag (standardized)\\nor HP tag (used by GATK ReadBackedPhasing) (default:\\nPS)"
    output_read_list: "Write reads that have been used for phasing to FILE."
    mapping_quality: "Minimum mapping quality (default: 20)"
    indels: "Also phase indels (default: do not phase indels)"
    ignore_read_groups: "Ignore read groups in BAM/CRAM header and assume all\\nreads come from the same sample."
    sample: "Name of a sample to phase. If not given, all samples\\nin the input VCF are phased. Can be used multiple\\ntimes."
    chromosome: "Name of chromosome to phase. If not given, all\\nchromosomes in the input VCF are phased. Can be used\\nmultiple times."
    verify_genotypes: "Verify input genotypes by re-typing them using the\\ngiven reads."
    min_overlap: "Minimum required read overlap for internal read\\nclustering stage (default: 2)."
    ce_refinements: "Maximum number of refinement steps for internal read\\nclustering stage (default: 1)."
    block_cut_sensitivity: "Strategy to determine block borders. 0 yields the\\nlongest blocks with more switch errors, 5 has the\\nshortest blocks with lowest switch error rate\\n(default: 4).\\n"
    vcf: "VCF file with variants to be phased (can be gzip-\\ncompressed)"
    phase_input: "BAM or CRAM with sequencing reads."
  }
  output {
    File out_stdout = stdout()
    File out_output_vcf_file = "${in_output_vcf_file}"
  }
}