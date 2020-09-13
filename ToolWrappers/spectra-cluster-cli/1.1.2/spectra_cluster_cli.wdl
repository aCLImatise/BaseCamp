version 1.0

task Spectraclustercli {
  input {
    File? add_scores
    File? binary_directory
    Boolean? fast_mode
    Int? filter
    Boolean? fragment_tolerance
    Boolean? keep_binary_files
    Int? major_peak_jobs
    Boolean? only_identified
    Boolean? only_unidentified
    File? output_path
    Int? precursor_tolerance
    String? precursor_tolerance_unit
    String? remove_reporters
    Boolean? reuse_binary_files
    Int? rounds
    String? threshold_end
    Boolean? x_convert_cgf
    Boolean? x_disable_mgf_comments
    Boolean? x_filter_peaks_mz
    File? x_learn_cdf
    File? x_load_cdf
    Boolean? x_merge_binary_files
    Int? x_min_adapt_comparisons
    Int? x_min_comparisons
    Int? x_min_consensus_peaks_to_keep
    Int? x_n_pre_filtered_peaks
    String spectra
    String cluster
  }
  command <<<
    spectra_cluster_cli \
      ~{spectra} \
      ~{cluster} \
      ~{if (add_scores) then "-add_scores" else ""} \
      ~{if defined(binary_directory) then ("-binary_directory " +  '"' + binary_directory + '"') else ""} \
      ~{if (fast_mode) then "-fast_mode" else ""} \
      ~{if defined(filter) then ("-filter " +  '"' + filter + '"') else ""} \
      ~{if (fragment_tolerance) then "-fragment_tolerance" else ""} \
      ~{if (keep_binary_files) then "-keep_binary_files" else ""} \
      ~{if defined(major_peak_jobs) then ("-major_peak_jobs " +  '"' + major_peak_jobs + '"') else ""} \
      ~{if (only_identified) then "-only_identified" else ""} \
      ~{if (only_unidentified) then "-only_unidentified" else ""} \
      ~{if defined(output_path) then ("-output_path " +  '"' + output_path + '"') else ""} \
      ~{if defined(precursor_tolerance) then ("-precursor_tolerance " +  '"' + precursor_tolerance + '"') else ""} \
      ~{if defined(precursor_tolerance_unit) then ("-precursor_tolerance_unit " +  '"' + precursor_tolerance_unit + '"') else ""} \
      ~{if defined(remove_reporters) then ("-remove_reporters " +  '"' + remove_reporters + '"') else ""} \
      ~{if (reuse_binary_files) then "-reuse_binary_files" else ""} \
      ~{if defined(rounds) then ("-rounds " +  '"' + rounds + '"') else ""} \
      ~{if defined(threshold_end) then ("-threshold_end " +  '"' + threshold_end + '"') else ""} \
      ~{if (x_convert_cgf) then "-x_convert_cgf" else ""} \
      ~{if (x_disable_mgf_comments) then "-x_disable_mgf_comments" else ""} \
      ~{if (x_filter_peaks_mz) then "-x_filter_peaks_mz" else ""} \
      ~{if defined(x_learn_cdf) then ("-x_learn_cdf " +  '"' + x_learn_cdf + '"') else ""} \
      ~{if defined(x_load_cdf) then ("-x_load_cdf " +  '"' + x_load_cdf + '"') else ""} \
      ~{if (x_merge_binary_files) then "-x_merge_binary_files" else ""} \
      ~{if defined(x_min_adapt_comparisons) then ("-x_min_adapt_comparisons " +  '"' + x_min_adapt_comparisons + '"') else ""} \
      ~{if defined(x_min_comparisons) then ("-x_min_comparisons " +  '"' + x_min_comparisons + '"') else ""} \
      ~{if defined(x_min_consensus_peaks_to_keep) then ("-x_min_consensus_peaks_to_keep " +  '"' + x_min_consensus_peaks_to_keep + '"') else ""} \
      ~{if defined(x_n_pre_filtered_peaks) then ("-x_n_prefiltered_peaks " +  '"' + x_n_pre_filtered_peaks + '"') else ""}
  >>>
  parameter_meta {
    add_scores: "if set, the similarity\\nscores of each spectrum\\nto the cluster's\\nconsensus spectrum\\nisadded to the output\\nfile."
    binary_directory: "path to the directory to\\n(temporarily) store the\\nbinary files. By default\\na temporary directory is\\nbeing created"
    fast_mode: "if this option is set the\\n'fast mode' is enabled.\\nIn this mode, the radical\\npeak filtering used for\\nthe comparison function\\nis already applied during\\nspectrum conversion.\\nThereby, the clustering\\nand consensus spectrum\\nquality is slightly\\ndecreased but speed\\nincreases 2-3 fold."
    filter: "adds a filter to be\\napplied to the input\\nspectrum. Available\\nvalues are\\n['immonium_ions',\\n'mz_150', 'mz_200']"
    fragment_tolerance: "fragment ion tolerance in\\nm/z to use for fragment\\npeak matching"
    keep_binary_files: "if this options is set,\\nthe binary files are not\\ndeleted after clustering."
    major_peak_jobs: "number of threads to use\\nfor major peak\\nclustering."
    only_identified: "if set, only identified\\nspectra are considered\\nfor clustering."
    only_unidentified: "if set, only unidentified\\nspectra are considered\\nfor clustering."
    output_path: "path to the outputfile.\\nOutputfile must not\\nexist."
    precursor_tolerance: "precursor tolerance\\n(clustering window size)\\nin m/z (default) or ppm\\nused during matching. The\\nunit can be changed by\\nsetting the\\n-precursor_tolerance_unit\\nparameter"
    precursor_tolerance_unit: "sets the precursor\\ntolerance unit. Allowed\\nvalues are \\\"mz\\\" and\\n\\\"ppm\\\". Default is \\\"mz\\\"."
    remove_reporters: "remove reporter ion peaks\\nin quantitation\\nexperiments. Possible\\nQUANTIATION TYPES are\\n'ITRAQ', 'TMT' and 'ALL'\\n('TMT' and 'ITRAQ' peaks\\nare removed."
    reuse_binary_files: "if this option is set,\\nthe binary files found in\\nthe binary file directory\\nwill be used for\\nclustering."
    rounds: "number of clustering\\nrounds to use."
    threshold_end: "(lowest) final clustering"
    x_convert_cgf: "(Advanced option) It this\\noption is set, the input\\nfile in CGF format will\\nbe converted to the\\n.clustering file. No\\nother processing will be\\nperformed."
    x_disable_mgf_comments: "(Advanced option) If set,\\nMGF comment strings are\\nNOT supported. This will\\nincrease performance but\\nonly works for MGF files\\nthat do not contain any\\ncomments"
    x_filter_peaks_mz: "(Advanced option) If this\\noption is set, the top 10\\npeaks per 100 m/z are\\nretained instead of the\\ntop N peaks overall."
    x_learn_cdf: "(Experimental option)\\nLearn the used cumulative\\ndistribution function\\ndirectly from the\\nprocessed data. This is\\nonly recommended for\\nhigh-resolution data. The\\nresult will be written to\\nthe defined file."
    x_load_cdf: "(Experimental option)\\nLoads the cumulative\\ndistribution function to\\nuse from the specified\\nfile. These files can be\\ncreated using the\\nx_learn_cdf parameter"
    x_merge_binary_files: "(Advanced option) If this\\noption is set, the input\\nfiles should be binary\\nresult files from the\\nclustering process. In\\nthis mode, the\\nspectra-cluster-cli only\\nmerges the binary files\\nand creates the final\\noutput file."
    x_min_adapt_comparisons: "(Experimental option)\\nUses an adaptive function\\nfor the minimum\\ncomparisons together with\\na minimum number always\\nto return."
    x_min_comparisons: "(Experimental option)\\nSets the minimum number\\nof comparisons used to\\ncalculate the probability\\nthat incorrect spectra\\nare clustered."
    x_min_consensus_peaks_to_keep: "(Advanced option) Sets\\nthe minimum number of\\npeaks to keep in a\\nconsensus spectrum. If\\nthe consensus spectrum\\ncontains fewer than these\\npeaks, the noise\\nfiltering which retains N\\npeaks per M m/z is not\\nused but all peaks are\\nkept"
    x_n_pre_filtered_peaks: "(Experimental option) Set\\nthe number of highest\\npeaks that are kept per\\nspectrum during loading.\\n"
    spectra: ""
    cluster: ""
  }
  output {
    File out_stdout = stdout()
    File out_add_scores = "${in_add_scores}"
    File out_x_learn_cdf = "${in_x_learn_cdf}"
  }
}