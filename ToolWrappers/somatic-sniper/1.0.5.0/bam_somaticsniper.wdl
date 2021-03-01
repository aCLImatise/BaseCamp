version 1.0

task Bamsomaticsniper {
  input {
    File? required_reference_sequence
    Boolean? display_version_information
    Int? filtering_reads_mapping
    Int? filtering_somatic_snv
    String? report_loh_variants
    String? report_gain_determined
    String? disable_priors_somatic
    String? use_prior_probabilities
    Float? prior_probability_somatic
    Float? theta_maq_consensus
    Int? number_haplotypes_sample
    Float? prior_difference_two
    String? normal_sample_d
    String? tumor_sample_d
    String? select_output_format
  }
  command <<<
    bam_somaticsniper \
      ~{if defined(required_reference_sequence) then ("-f " +  '"' + required_reference_sequence + '"') else ""} \
      ~{if (display_version_information) then "-v" else ""} \
      ~{if defined(filtering_reads_mapping) then ("-q " +  '"' + filtering_reads_mapping + '"') else ""} \
      ~{if defined(filtering_somatic_snv) then ("-Q " +  '"' + filtering_somatic_snv + '"') else ""} \
      ~{if defined(report_loh_variants) then ("-L " +  '"' + report_loh_variants + '"') else ""} \
      ~{if defined(report_gain_determined) then ("-G " +  '"' + report_gain_determined + '"') else ""} \
      ~{if defined(disable_priors_somatic) then ("-p " +  '"' + disable_priors_somatic + '"') else ""} \
      ~{if defined(use_prior_probabilities) then ("-J " +  '"' + use_prior_probabilities + '"') else ""} \
      ~{if defined(prior_probability_somatic) then ("-s " +  '"' + prior_probability_somatic + '"') else ""} \
      ~{if defined(theta_maq_consensus) then ("-T " +  '"' + theta_maq_consensus + '"') else ""} \
      ~{if defined(number_haplotypes_sample) then ("-N " +  '"' + number_haplotypes_sample + '"') else ""} \
      ~{if defined(prior_difference_two) then ("-r " +  '"' + prior_difference_two + '"') else ""} \
      ~{if defined(normal_sample_d) then ("-n " +  '"' + normal_sample_d + '"') else ""} \
      ~{if defined(tumor_sample_d) then ("-t " +  '"' + tumor_sample_d + '"') else ""} \
      ~{if defined(select_output_format) then ("-F " +  '"' + select_output_format + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    required_reference_sequence: "REQUIRED reference sequence in the FASTA format"
    display_version_information: "Display version information"
    filtering_reads_mapping: "filtering reads with mapping quality less than INT [0]"
    filtering_somatic_snv: "filtering somatic snv output with somatic quality less than  INT [15]"
    report_loh_variants: "do not report LOH variants as determined by genotypes"
    report_gain_determined: "do not report Gain of Reference variants as determined by genotypes"
    disable_priors_somatic: "disable priors in the somatic calculation. Increases sensitivity for solid tumors"
    use_prior_probabilities: "Use prior probabilities accounting for the somatic mutation rate"
    prior_probability_somatic: "prior probability of a somatic mutation (implies -J) [0.010000]"
    theta_maq_consensus: "theta in maq consensus calling model (for -c/-g) [0.850000]"
    number_haplotypes_sample: "number of haplotypes in the sample (for -c/-g) [2]"
    prior_difference_two: "prior of a difference between two haplotypes (for -c/-g) [0.001000]"
    normal_sample_d: "normal sample id (for VCF header) [NORMAL]"
    tumor_sample_d: "tumor sample id (for VCF header) [TUMOR]"
    select_output_format: "select output format [classic]\\nAvailable formats:\\nclassic\\nvcf\\nbed\\n"
  }
  output {
    File out_stdout = stdout()
  }
}