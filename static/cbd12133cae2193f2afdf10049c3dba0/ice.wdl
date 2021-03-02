version 1.0

task Ice {
  input {
    String? filter_low_counts_perc
    String? filter_high_counts_perc
    Boolean? remove_all_zeros_loci
    Int? max_iter
    String? eps
    String? output_bias
    File? results_filename
    String normalization
  }
  command <<<
    ice \
      ~{normalization} \
      ~{if defined(filter_low_counts_perc) then ("--filter_low_counts_perc " +  '"' + filter_low_counts_perc + '"') else ""} \
      ~{if defined(filter_high_counts_perc) then ("--filter_high_counts_perc " +  '"' + filter_high_counts_perc + '"') else ""} \
      ~{if (remove_all_zeros_loci) then "--remove-all-zeros-loci" else ""} \
      ~{if defined(max_iter) then ("--max_iter " +  '"' + max_iter + '"') else ""} \
      ~{if defined(eps) then ("--eps " +  '"' + eps + '"') else ""} \
      ~{if defined(output_bias) then ("--output-bias " +  '"' + output_bias + '"') else ""} \
      ~{if defined(results_filename) then ("--results_filename " +  '"' + results_filename + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    filter_low_counts_perc: "Percentage of reads to filter out"
    filter_high_counts_perc: "Percentage of reads to filter out"
    remove_all_zeros_loci: "If provided, all non-interacting loci will be removed\\nprior to the filtering strategy chosen."
    max_iter: "Maximum number of iterations"
    eps: "Precision"
    output_bias: "Output the bias vector"
    results_filename: ""
    normalization: ""
  }
  output {
    File out_stdout = stdout()
  }
}