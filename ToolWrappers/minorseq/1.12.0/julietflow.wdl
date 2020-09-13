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
      ~{if (bam_ccs_file) then "-i" else ""} \
      ~{if (reference_fasta_file) then "-r" else ""} \
      ~{if (juliet_target_config) then "-c" else ""} \
      ~{if (number_cpu_cores) then "-j" else ""} \
      ~{if (maximal_number_realign) then "-e" else ""} \
      ~{if (target_reference_fasta) then "-t" else ""} \
      ~{if (minimal_variant_frequency) then "-m" else ""} \
      ~{if (maximal_variant_frequency) then "-n" else ""} \
      ~{if (genomic_region_interest) then "-g" else ""} \
      ~{if (phase_variants) then "-p" else ""} \
      ~{if (only_report_known) then "-k" else ""} \
      ~{if (keep_temporary_files) then "-z" else ""}
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
  output {
    File out_stdout = stdout()
  }
}