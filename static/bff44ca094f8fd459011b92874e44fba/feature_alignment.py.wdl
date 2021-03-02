version 1.0

task FeatureAlignmentpy {
  input {
    Array[String] in
    Boolean? file_format
    File? out
    Boolean? out_matrix
    Boolean? out_ids
    Boolean? out_meta
    Int? fdr_cut_off
    Int? target_fdr
    Boolean? max_fdr_quality
    Int? max_rt_diff
    Int? frac_selected
    String? method
    Int? verbosity
    Boolean? matrix_output_method
    String? realign_method
    Boolean? force
    Boolean? disable_isotopic_grouping
    Int? use_d_score_filter
    Int? nr_high_conf_exp
    String? read_method
    Directory? tmpdir
    Int? alignment_score
    Boolean? realign_runs
    Boolean? use_external_r
    String features
  }
  command <<<
    feature_alignment_py \
      ~{features} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if (file_format) then "--file_format" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (out_matrix) then "--out_matrix" else ""} \
      ~{if (out_ids) then "--out_ids" else ""} \
      ~{if (out_meta) then "--out_meta" else ""} \
      ~{if defined(fdr_cut_off) then ("--fdr_cutoff " +  '"' + fdr_cut_off + '"') else ""} \
      ~{if defined(target_fdr) then ("--target_fdr " +  '"' + target_fdr + '"') else ""} \
      ~{if (max_fdr_quality) then "--max_fdr_quality" else ""} \
      ~{if defined(max_rt_diff) then ("--max_rt_diff " +  '"' + max_rt_diff + '"') else ""} \
      ~{if defined(frac_selected) then ("--frac_selected " +  '"' + frac_selected + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if (matrix_output_method) then "--matrix_output_method" else ""} \
      ~{if defined(realign_method) then ("--realign_method " +  '"' + realign_method + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (disable_isotopic_grouping) then "--disable_isotopic_grouping" else ""} \
      ~{if defined(use_d_score_filter) then ("--use_dscore_filter " +  '"' + use_d_score_filter + '"') else ""} \
      ~{if defined(nr_high_conf_exp) then ("--nr_high_conf_exp " +  '"' + nr_high_conf_exp + '"') else ""} \
      ~{if defined(read_method) then ("--readmethod " +  '"' + read_method + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(alignment_score) then ("--alignment_score " +  '"' + alignment_score + '"') else ""} \
      ~{if (realign_runs) then "--realign_runs" else ""} \
      ~{if (use_external_r) then "--use_external_r" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "A list of mProphet output files containing all\\npeakgroups (use quotes around the filenames)"
    file_format: "Input file format (openswath, mprophet or peakview)"
    out: "Output file with filtered peakgroups"
    out_matrix: "Matrix containing one peak group per row (supports\\n.csv, .tsv or .xlsx)"
    out_ids: "Id file only containing the ids"
    out_meta: "Outfile containing meta information"
    fdr_cut_off: "Fixed FDR cutoff used for seeding (only assays where\\nat least one peakgroup in one run is below this cutoff\\nwill be included in the result), see also target_fdr\\nfor a non-fixed cutoff"
    target_fdr: "If parameter estimation is used, which target FDR\\nshould be optimized for. If set to lower than 0,\\nparameter estimation is turned off."
    max_fdr_quality: "Extension m-score score cutoff, peakgroups of this\\nquality will still be considered for alignment during\\nextension"
    max_rt_diff: "Maximal difference in RT (in seconds) for two aligned"
    frac_selected: "Do not write peakgroup if selected in less than this\\nfraction of runs (range 0 to 1)"
    method: "Method to use for the clustering (best_overall,\\nbest_cluster_score or global_best_cluster_score,\\nglobal_best_overall, LocalMST, LocalMSTAllCluster)."
    verbosity: "Verbosity (0 = little)"
    matrix_output_method: "Which columns are written besides Intensity (none, RT,\\nscore, source or full)"
    realign_method: "RT alignment method (diRT, linear, splineR,\\nsplineR_external, splinePy, lowess, lowess_biostats,\\nlowess_statsmodels, lowess_cython, nonCVSpline,\\nCVSpline, Earth, WeightedNearestNeighbour,\\nSmoothLLDMedian, None)"
    force: "Force alignment"
    disable_isotopic_grouping: "Disable grouping of isotopic variants by\\npeptide_group_label"
    use_d_score_filter: "Discard all peakgroups below this d-score"
    nr_high_conf_exp: "Number of experiments in which the peptide needs to be\\nidentified with confidence above fdr_cutoff"
    read_method: "Read full or minimal transition groups\\n(cminimal,minimal,full)"
    tmpdir: "Temporary directory"
    alignment_score: "Minimal score needed for a feature to be considered\\nfor alignment between runs"
    realign_runs: "Deprecated option (equals '--realign_method\\nexternal_r')"
    use_external_r: "Deprecated option (equals '--realign_method\\nexternal_r')\\n"
    features: "--iso_max_rt_diff 30  Maximal difference in RT (in seconds) for two isotopic"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}