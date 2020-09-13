version 1.0

task Idr {
  input {
    String? samples_samples_samplesfiles
    File? peak_list
    String? input_file_type
    String? rank
    File? output_file
    File? output_file_type
    File? log_output_file
    String? idr_threshold
    Float? soft_idr_threshold
    Boolean? use_old_output_format
    Boolean? plot
    Boolean? use_nonoverlapping_peaks
    String? peak_merge_method
    Float? initial_mu
    Float? initial_sigma
    Float? initial_rho
    Float? initial_mix_param
    Boolean? fix_mu
    Boolean? fix_sigma
    Boolean? dont_filter_peaks_below_noise_mean
    Boolean? use_best_multi_summit_idr
    Boolean? allow_negative_scores
    Int? random_seed
    Int? max_iter
    Float? convergence_eps
    Boolean? only_merge_peaks
    Boolean? verbose
    Boolean? quiet
    String var_28
  }
  command <<<
    idr \
      ~{var_28} \
      ~{if defined(samples_samples_samplesfiles) then ("--samples " +  '"' + samples_samples_samplesfiles + '"') else ""} \
      ~{if defined(peak_list) then ("--peak-list " +  '"' + peak_list + '"') else ""} \
      ~{if defined(input_file_type) then ("--input-file-type " +  '"' + input_file_type + '"') else ""} \
      ~{if defined(rank) then ("--rank " +  '"' + rank + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(output_file_type) then ("--output-file-type " +  '"' + output_file_type + '"') else ""} \
      ~{if defined(log_output_file) then ("--log-output-file " +  '"' + log_output_file + '"') else ""} \
      ~{if defined(idr_threshold) then ("--idr-threshold " +  '"' + idr_threshold + '"') else ""} \
      ~{if defined(soft_idr_threshold) then ("--soft-idr-threshold " +  '"' + soft_idr_threshold + '"') else ""} \
      ~{if (use_old_output_format) then "--use-old-output-format" else ""} \
      ~{if (plot) then "--plot" else ""} \
      ~{if (use_nonoverlapping_peaks) then "--use-nonoverlapping-peaks" else ""} \
      ~{if defined(peak_merge_method) then ("--peak-merge-method " +  '"' + peak_merge_method + '"') else ""} \
      ~{if defined(initial_mu) then ("--initial-mu " +  '"' + initial_mu + '"') else ""} \
      ~{if defined(initial_sigma) then ("--initial-sigma " +  '"' + initial_sigma + '"') else ""} \
      ~{if defined(initial_rho) then ("--initial-rho " +  '"' + initial_rho + '"') else ""} \
      ~{if defined(initial_mix_param) then ("--initial-mix-param " +  '"' + initial_mix_param + '"') else ""} \
      ~{if (fix_mu) then "--fix-mu" else ""} \
      ~{if (fix_sigma) then "--fix-sigma" else ""} \
      ~{if (dont_filter_peaks_below_noise_mean) then "--dont-filter-peaks-below-noise-mean" else ""} \
      ~{if (use_best_multi_summit_idr) then "--use-best-multisummit-IDR" else ""} \
      ~{if (allow_negative_scores) then "--allow-negative-scores" else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{if defined(max_iter) then ("--max-iter " +  '"' + max_iter + '"') else ""} \
      ~{if defined(convergence_eps) then ("--convergence-eps " +  '"' + convergence_eps + '"') else ""} \
      ~{if (only_merge_peaks) then "--only-merge-peaks" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    samples_samples_samplesfiles: "SAMPLES, -s SAMPLES SAMPLES\\nFiles containing peaks and scores."
    peak_list: "If provided, all peaks will be taken from this file."
    input_file_type: "File type of --samples and --peak-list."
    rank: "Which column to use to rank peaks.\\nOptions: signal.value p.value q.value columnIndex\\nDefaults:\\nnarrowPeak/broadPeak: signal.value\\nbed: score"
    output_file: "File to write output to.\\nDefault: idrValues.txt"
    output_file_type: "Output file type. Defaults to input file type when available, otherwise bed."
    log_output_file: "File to write output to. Default: stderr"
    idr_threshold: "Only return peaks with a global idr threshold below this value.\\nDefault: report all peaks"
    soft_idr_threshold: "Report statistics for peaks with a global idr below this value but return all peaks with an idr below --idr.\\nDefault: 0.05"
    use_old_output_format: "Use old output format."
    plot: "Plot the results to [OFNAME].png"
    use_nonoverlapping_peaks: "Use peaks without an overlapping match and set the value to 0."
    peak_merge_method: "Which method to use for merging peaks.\\nDefault: 'sum' for signal/score/column indexes, 'min' for p/q-value."
    initial_mu: "Initial value of mu. Default: 0.10"
    initial_sigma: "Initial value of sigma. Default: 1.00"
    initial_rho: "Initial value of rho. Default: 0.20"
    initial_mix_param: "Initial value of the mixture params. Default: 0.50"
    fix_mu: "Fix mu to the starting point and do not let it vary."
    fix_sigma: "Fix sigma to the starting point and do not let it vary."
    dont_filter_peaks_below_noise_mean: "Allow signal points that are below the noise mean (should only be used if you know what you are doing)."
    use_best_multi_summit_idr: "Set the IDR value for a group of multi summit peaks (a group of peaks with the same chr/start/stop but different summits) to the best value across all of these peaks. This is a work around for peak callers that don't do a good job splitting scores across multi summit peaks (e.g. MACS). If set in conjunction with --plot two plots will be created - one with alternate summits and one without.  Use this option with care."
    allow_negative_scores: "Allow negative values for scores. (should only be used if you know what you are doing)"
    random_seed: "The random seed value (sor braking ties). Default: 0"
    max_iter: "The maximum number of optimization iterations. Default: 3000"
    convergence_eps: "The maximum change in parameter value changes for convergence. Default: 1.00e-06"
    only_merge_peaks: "Only return the merged peak list."
    verbose: "Print out additional debug information"
    quiet: "Don't print any status messages"
    var_28: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_output_file_type = "${in_output_file_type}"
    File out_log_output_file = "${in_log_output_file}"
  }
}