version 1.0

task CompareBiompy {
  input {
    Boolean? verbose
    Boolean? compare_observations
    Boolean? normalize
    Boolean? limit_to_expected_observations
    Boolean? limit_to_observed_observations
    Boolean? shuffle_samples
    Boolean? not_relative_abundance_scores
    String? exp_trait_table_fp
    File? output_fp
  }
  command <<<
    compare_biom_py \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (compare_observations) then "--compare_observations" else ""} \
      ~{if (normalize) then "--normalize" else ""} \
      ~{if (limit_to_expected_observations) then "--limit_to_expected_observations" else ""} \
      ~{if (limit_to_observed_observations) then "--limit_to_observed_observations" else ""} \
      ~{if (shuffle_samples) then "--shuffle_samples" else ""} \
      ~{if (not_relative_abundance_scores) then "--not_relative_abundance_scores" else ""} \
      ~{if defined(exp_trait_table_fp) then ("--exp_trait_table_fp " +  '"' + exp_trait_table_fp + '"') else ""} \
      ~{if defined(output_fp) then ("--output_fp " +  '"' + output_fp + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Print information during execution -- useful for\\ndebugging [default: False]"
    compare_observations: "Calculate accuracy values by comparing between\\nobservations (instead of between samples) [default:\\nFalse]"
    normalize: "Convert both expected and observed tables to relative\\nabundances (instead of observations) [default: False]"
    limit_to_expected_observations: "Ignore observations that are not in the expected\\ntable[default: False]"
    limit_to_observed_observations: "Ignore observations that are not in the observed\\ntable[default: False]"
    shuffle_samples: "Shuffle samples ids randomly before measuring\\naccuracy[default: False]"
    not_relative_abundance_scores: "Round numbers (instead of taking ceil() which is used\\nfor RA) before calculating TP,FP,FN,TN [default:\\nFalse]"
    exp_trait_table_fp: "the expected trait table (biom format) [REQUIRED]"
    output_fp: "the output file [REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_fp = "${in_output_fp}"
  }
}