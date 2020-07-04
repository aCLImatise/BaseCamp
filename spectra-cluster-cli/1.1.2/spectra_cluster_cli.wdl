version 1.0

task SpectraClusterCli {
  input {
    Boolean? add_scores
    String? binary_directory
    Boolean? fast_mode
    String? filter
    Boolean? fragment_tolerance
    Boolean? keep_binary_files
    String? major_peak_jobs
    Boolean? only_identified
    Boolean? only_unidentified
    String? output_path
    String? precursor_tolerance
    String? precursor_tolerance_unit
    String? remove_reporters
    Boolean? reuse_binary_files
    String? rounds
    String? threshold_end
    String? threshold_start
    Boolean? verbose
    Boolean? x_convert_cgf
    Boolean? x_disable_mgf_comments
    Boolean? x_filter_peaks_mz
    String? x_learn_cdf
    String? x_load_cdf
    Boolean? x_merge_binary_files
    String? x_min_adapt_comparisons
    String? x_min_comparisons
    String? x_min_consensus_peaks_to_keep
    String? x_n_pre_filtered_peaks
    String spectra
    String cluster
  }
  command <<<
    spectra-cluster-cli \
      ~{spectra} \
      ~{cluster} \
      ~{true="-add_scores" false="" add_scores} \
      ~{if defined(binary_directory) then ("-binary_directory " +  '"' + binary_directory + '"') else ""} \
      ~{true="-fast_mode" false="" fast_mode} \
      ~{if defined(filter) then ("-filter " +  '"' + filter + '"') else ""} \
      ~{true="-fragment_tolerance" false="" fragment_tolerance} \
      ~{true="-keep_binary_files" false="" keep_binary_files} \
      ~{if defined(major_peak_jobs) then ("-major_peak_jobs " +  '"' + major_peak_jobs + '"') else ""} \
      ~{true="-only_identified" false="" only_identified} \
      ~{true="-only_unidentified" false="" only_unidentified} \
      ~{if defined(output_path) then ("-output_path " +  '"' + output_path + '"') else ""} \
      ~{if defined(precursor_tolerance) then ("-precursor_tolerance " +  '"' + precursor_tolerance + '"') else ""} \
      ~{if defined(precursor_tolerance_unit) then ("-precursor_tolerance_unit " +  '"' + precursor_tolerance_unit + '"') else ""} \
      ~{if defined(remove_reporters) then ("-remove_reporters " +  '"' + remove_reporters + '"') else ""} \
      ~{true="-reuse_binary_files" false="" reuse_binary_files} \
      ~{if defined(rounds) then ("-rounds " +  '"' + rounds + '"') else ""} \
      ~{if defined(threshold_end) then ("-threshold_end " +  '"' + threshold_end + '"') else ""} \
      ~{if defined(threshold_start) then ("-threshold_start " +  '"' + threshold_start + '"') else ""} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-x_convert_cgf" false="" x_convert_cgf} \
      ~{true="-x_disable_mgf_comments" false="" x_disable_mgf_comments} \
      ~{true="-x_filter_peaks_mz" false="" x_filter_peaks_mz} \
      ~{if defined(x_learn_cdf) then ("-x_learn_cdf " +  '"' + x_learn_cdf + '"') else ""} \
      ~{if defined(x_load_cdf) then ("-x_load_cdf " +  '"' + x_load_cdf + '"') else ""} \
      ~{true="-x_merge_binary_files" false="" x_merge_binary_files} \
      ~{if defined(x_min_adapt_comparisons) then ("-x_min_adapt_comparisons " +  '"' + x_min_adapt_comparisons + '"') else ""} \
      ~{if defined(x_min_comparisons) then ("-x_min_comparisons " +  '"' + x_min_comparisons + '"') else ""} \
      ~{if defined(x_min_consensus_peaks_to_keep) then ("-x_min_consensus_peaks_to_keep " +  '"' + x_min_consensus_peaks_to_keep + '"') else ""} \
      ~{if defined(x_n_pre_filtered_peaks) then ("-x_n_prefiltered_peaks " +  '"' + x_n_pre_filtered_peaks + '"') else ""}
  >>>
  parameter_meta {
    add_scores: "if set, the similarity scores of each spectrum to the cluster's consensus spectrum isadded to the output file."
    binary_directory: "path to the directory to (temporarily) store the binary files. By default a temporary directory is being created"
    fast_mode: "if this option is set the 'fast mode' is enabled. In this mode, the radical peak filtering used for the comparison function is already applied during spectrum conversion. Thereby, the clustering and consensus spectrum quality is slightly decreased but speed increases 2-3 fold."
    filter: "adds a filter to be applied to the input spectrum. Available values are ['immonium_ions', 'mz_150', 'mz_200']"
    fragment_tolerance: "fragment ion tolerance in m/z to use for fragment peak matching"
    keep_binary_files: "if this options is set, the binary files are not deleted after clustering."
    major_peak_jobs: "number of threads to use for major peak clustering."
    only_identified: "if set, only identified spectra are considered for clustering."
    only_unidentified: "if set, only unidentified spectra are considered for clustering."
    output_path: "path to the outputfile. Outputfile must not exist."
    precursor_tolerance: "precursor tolerance (clustering window size) in m/z (default) or ppm used during matching. The unit can be changed by setting the -precursor_tolerance_unit parameter"
    precursor_tolerance_unit: "sets the precursor tolerance unit. Allowed values are \"mz\" and \"ppm\". Default is \"mz\"."
    remove_reporters: "remove reporter ion peaks in quantitation experiments. Possible QUANTIATION TYPES are 'ITRAQ', 'TMT' and 'ALL' ('TMT' and 'ITRAQ' peaks are removed."
    reuse_binary_files: "if this option is set, the binary files found in the binary file directory will be used for clustering."
    rounds: "number of clustering rounds to use."
    threshold_end: "(lowest) final clustering threshold"
    threshold_start: "(highest) starting threshold"
    verbose: "if set additional status information is printed."
    x_convert_cgf: "(Advanced option) It this option is set, the input file in CGF format will be converted to the .clustering file. No other processing will be performed."
    x_disable_mgf_comments: "(Advanced option) If set, MGF comment strings are NOT supported. This will increase performance but only works for MGF files that do not contain any comments"
    x_filter_peaks_mz: "(Advanced option) If this option is set, the top 10 peaks per 100 m/z are retained instead of the top N peaks overall."
    x_learn_cdf: "(Experimental option) Learn the used cumulative distribution function directly from the processed data. This is only recommended for high-resolution data. The result will be written to the defined file."
    x_load_cdf: "(Experimental option) Loads the cumulative distribution function to use from the specified file. These files can be created using the x_learn_cdf parameter"
    x_merge_binary_files: "(Advanced option) If this option is set, the input files should be binary result files from the clustering process. In this mode, the spectra-cluster-cli only merges the binary files and creates the final output file."
    x_min_adapt_comparisons: "(Experimental option) Uses an adaptive function for the minimum comparisons together with a minimum number always to return."
    x_min_comparisons: "(Experimental option) Sets the minimum number of comparisons used to calculate the probability that incorrect spectra are clustered."
    x_min_consensus_peaks_to_keep: "(Advanced option) Sets the minimum number of peaks to keep in a consensus spectrum. If the consensus spectrum contains fewer than these peaks, the noise filtering which retains N peaks per M m/z is not used but all peaks are kept"
    x_n_pre_filtered_peaks: "(Experimental option) Set the number of highest peaks that are kept per spectrum during loading."
    spectra: ""
    cluster: ""
  }
}