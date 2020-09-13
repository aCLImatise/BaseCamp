version 1.0

task Ice {
  input {
    File? var_0
    String? filter_low_counts_perc
    String? filter_high_counts_perc
    Boolean? remove_all_zeros_loci
    Int? max_iter
    String? eps
    Boolean? dense
    String? output_bias
    String? verbose
    String _filteringperc_filteringperc
  }
  command <<<
    ice \
      ~{_filteringperc_filteringperc} \
      ~{if defined(var_0) then ("--results_filename " +  '"' + var_0 + '"') else ""} \
      ~{if defined(filter_low_counts_perc) then ("--filter_low_counts_perc " +  '"' + filter_low_counts_perc + '"') else ""} \
      ~{if defined(filter_high_counts_perc) then ("--filter_high_counts_perc " +  '"' + filter_high_counts_perc + '"') else ""} \
      ~{if (remove_all_zeros_loci) then "--remove-all-zeros-loci" else ""} \
      ~{if defined(max_iter) then ("--max_iter " +  '"' + max_iter + '"') else ""} \
      ~{if defined(eps) then ("--eps " +  '"' + eps + '"') else ""} \
      ~{if (dense) then "--dense" else ""} \
      ~{if defined(output_bias) then ("--output-bias " +  '"' + output_bias + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    var_0: ""
    filter_low_counts_perc: "Percentage of reads to filter out"
    filter_high_counts_perc: "Percentage of reads to filter out"
    remove_all_zeros_loci: "If provided, all non-interacting loci will be removed\\nprior to the filtering strategy chosen."
    max_iter: "Maximum number of iterations"
    eps: "Precision"
    dense: ""
    output_bias: "Output the bias vector"
    verbose: ""
    _filteringperc_filteringperc: "--filtering_perc FILTERING_PERC, -f FILTERING_PERC"
  }
  output {
    File out_stdout = stdout()
  }
}