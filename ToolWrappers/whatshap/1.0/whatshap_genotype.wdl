version 1.0

task WhatshapGenotype {
  input {
    File? output_vcf_file
    File? reference
    Int? max_coverage
    Int? mapping_quality
    Boolean? indels
    Boolean? ignore_read_groups
    String? sample
    String? chromosome
    Int? gt_qual_threshold
    Boolean? no_priors
    File? prior_output
    Int? overhang
    Int? constant
    Boolean? affine_gap
    Int? gap_start
    Int? gap_extend
    Int? mismatch
    File? ped
    Float? recomb_rate
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
      ~{if (indels) then "--indels" else ""} \
      ~{if (ignore_read_groups) then "--ignore-read-groups" else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(chromosome) then ("--chromosome " +  '"' + chromosome + '"') else ""} \
      ~{if defined(gt_qual_threshold) then ("--gt-qual-threshold " +  '"' + gt_qual_threshold + '"') else ""} \
      ~{if (no_priors) then "--no-priors" else ""} \
      ~{if defined(prior_output) then ("--prioroutput " +  '"' + prior_output + '"') else ""} \
      ~{if defined(overhang) then ("--overhang " +  '"' + overhang + '"') else ""} \
      ~{if defined(constant) then ("--constant " +  '"' + constant + '"') else ""} \
      ~{if (affine_gap) then "--affine-gap" else ""} \
      ~{if defined(gap_start) then ("--gap-start " +  '"' + gap_start + '"') else ""} \
      ~{if defined(gap_extend) then ("--gap-extend " +  '"' + gap_extend + '"') else ""} \
      ~{if defined(mismatch) then ("--mismatch " +  '"' + mismatch + '"') else ""} \
      ~{if defined(ped) then ("--ped " +  '"' + ped + '"') else ""} \
      ~{if defined(recomb_rate) then ("--recombrate " +  '"' + recomb_rate + '"') else ""} \
      ~{if defined(gen_map) then ("--genmap " +  '"' + gen_map + '"') else ""} \
      ~{if (use_ped_samples) then "--use-ped-samples" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_vcf_file: "Output VCF file. Add .gz to the file name to get\\ncompressed output. If omitted, use standard output."
    reference: "Reference file. Provide this to detect alleles through\\nre-alignment. If no index (.fai) exists, it will be\\ncreated"
    max_coverage: "Reduce coverage to at most MAXCOV (default: 15)."
    mapping_quality: "Minimum mapping quality (default: 20)"
    indels: "Also genotype indels (default: genotype only SNPs)"
    ignore_read_groups: "Ignore read groups in BAM header and assume all reads\\ncome from the same sample."
    sample: "Name of a sample to genotype. If not given, all\\nsamples in the input VCF are genotyped. Can be used\\nmultiple times."
    chromosome: "Name of chromosome to genotyped. If not given, all\\nchromosomes in the input VCF are genotyped. Can be\\nused multiple times."
    gt_qual_threshold: "Phred scaled error probability threshold used for\\ngenotyping (default: 0). Must be at least 0. If error\\nprobability of genotype is higher, genotype ./. is\\noutput."
    no_priors: "Skip initial prior genotyping and use uniform priors\\n(default: False)."
    prior_output: "output prior genotype likelihoods to the given file."
    overhang: "When --reference is used, extend alignment by this\\nmany bases to left and right when realigning (default:\\n10)."
    constant: "This constant is used to regularize the priors\\n(default: 0)."
    affine_gap: "When detecting alleles through re-alignment, use\\naffine gap costs (EXPERIMENTAL)."
    gap_start: "gap starting penalty in case affine gap costs are used\\n(default: 10)."
    gap_extend: "gap extend penalty in case affine gap costs are used\\n(default: 7)."
    mismatch: "mismatch cost in case affine gap costs are used\\n(default: 15)"
    ped: "/FAM         Use pedigree information in PED file to improve\\ngenotyping (switches to PedMEC algorithm). Columns 2,\\n3, 4 must refer to child, mother, and father sample\\nnames as used in the VCF and BAM. Other columns are\\nignored (EXPERIMENTAL)."
    recomb_rate: "Recombination rate in cM/Mb (used with --ped). If\\ngiven, a constant recombination rate is assumed\\n(default: 1.26cM/Mb)."
    gen_map: "File with genetic map (used with --ped) to be used\\ninstead of constant recombination rate, i.e. overrides\\noption --recombrate."
    use_ped_samples: "Only work on samples mentioned in the provided PED\\nfile.\\n"
    vcf: "VCF file with variants to be genotyped (can be gzip-\\ncompressed)"
    phase_input: "BAM or VCF file(s) with phase information, either\\nthrough sequencing reads (BAM) or through phased\\nblocks (VCF)"
  }
  output {
    File out_stdout = stdout()
    File out_output_vcf_file = "${in_output_vcf_file}"
    File out_prior_output = "${in_prior_output}"
  }
}