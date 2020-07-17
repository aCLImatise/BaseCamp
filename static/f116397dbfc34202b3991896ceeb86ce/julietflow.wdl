version 1.0

task Julietflow {
  input {
    Boolean? bam_ccs_file
    Boolean? reference_fasta_file
    Boolean? juliet_target_config
    Boolean? number_cpu_cores
    Boolean? maximal_number_realign
    Boolean? target_reference_fasta
    Boolean? minimal_variant_frequency
    Boolean? maximal_variant_frequency
    Boolean? genomic_region_interest
    Boolean? phase_variants
    Boolean? only_report_known
    Boolean? keep_temporary_files
  }
  command <<<
    julietflow \
      ~{true="-i" false="" bam_ccs_file} \
      ~{true="-r" false="" reference_fasta_file} \
      ~{true="-c" false="" juliet_target_config} \
      ~{true="-j" false="" number_cpu_cores} \
      ~{true="-e" false="" maximal_number_realign} \
      ~{true="-t" false="" target_reference_fasta} \
      ~{true="-m" false="" minimal_variant_frequency} \
      ~{true="-n" false="" maximal_variant_frequency} \
      ~{true="-g" false="" genomic_region_interest} \
      ~{true="-p" false="" phase_variants} \
      ~{true="-k" false="" only_report_known} \
      ~{true="-z" false="" keep_temporary_files}
  >>>
  parameter_meta {
    bam_ccs_file: "[arg]  BAM CCS file to process. Required."
    reference_fasta_file: "[arg]  Reference FASTA file. Required."
    juliet_target_config: "[arg]  Juliet target config. Default=none"
    number_cpu_cores: "[arg]  Number of CPU cores. Default=1"
    maximal_number_realign: "[arg]  Maximal number of re-align iterations. Default=1"
    target_reference_fasta: "[arg]  Target reference FASTA, per default using --ref."
    minimal_variant_frequency: "[arg]  Minimal variant frequency. Default=0."
    maximal_variant_frequency: "[arg]  Maximal variant frequency. Default=100."
    genomic_region_interest: "[arg]  Genomic region of interest, reads will be clipped to that region, empty means all reads."
    phase_variants: "Phase variants."
    only_report_known: "Only report known DRM positions."
    keep_temporary_files: "Keep temporary files."
  }
}