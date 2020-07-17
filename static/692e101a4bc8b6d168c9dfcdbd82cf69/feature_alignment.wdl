version 1.0

task FeatureAlignment.py {
  input {
    Array[String] in
    Boolean? file_format
    String? out
    Boolean? out_matrix
    Boolean? out_ids
    Boolean? out_meta
    String? fdr_cut_off
    String? target_fdr
    Boolean? max_fdr_quality
    String? max_rt_diff
    String? iso_max_rt_diff
    String? frac_selected
    String? method
    String? verbosity
    Boolean? matrix_output_method
    String? realign_method
    Boolean? force
    String? d_score_cut_off
    String? nr_high_conf_exp
    Int? read_method
    String? tmpdir
    String? alignment_score
    Boolean? realign_runs
    Boolean? use_external_r
  }
  command <<<
    feature_alignment.py \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{true="--file_format" false="" file_format} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{true="--out_matrix" false="" out_matrix} \
      ~{true="--out_ids" false="" out_ids} \
      ~{true="--out_meta" false="" out_meta} \
      ~{if defined(fdr_cut_off) then ("--fdr_cutoff " +  '"' + fdr_cut_off + '"') else ""} \
      ~{if defined(target_fdr) then ("--target_fdr " +  '"' + target_fdr + '"') else ""} \
      ~{true="--max_fdr_quality" false="" max_fdr_quality} \
      ~{if defined(max_rt_diff) then ("--max_rt_diff " +  '"' + max_rt_diff + '"') else ""} \
      ~{if defined(iso_max_rt_diff) then ("--iso_max_rt_diff " +  '"' + iso_max_rt_diff + '"') else ""} \
      ~{if defined(frac_selected) then ("--frac_selected " +  '"' + frac_selected + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{true="--matrix_output_method" false="" matrix_output_method} \
      ~{if defined(realign_method) then ("--realign_method " +  '"' + realign_method + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{if defined(d_score_cut_off) then ("--dscore_cutoff " +  '"' + d_score_cut_off + '"') else ""} \
      ~{if defined(nr_high_conf_exp) then ("--nr_high_conf_exp " +  '"' + nr_high_conf_exp + '"') else ""} \
      ~{if defined(read_method) then ("--readmethod " +  '"' + read_method + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(alignment_score) then ("--alignment_score " +  '"' + alignment_score + '"') else ""} \
      ~{true="--realign_runs" false="" realign_runs} \
      ~{true="--use_external_r" false="" use_external_r}
  >>>
  parameter_meta {
    in: "A list of mProphet output files containing all peakgroups (use quotes around the filenames)"
    file_format: "Input file format (openswath, mprophet or peakview)"
    out: "Output file with filtered peakgroups"
    out_matrix: "Matrix containing one peak group per row (supports .csv, .tsv or .xlsx)"
    out_ids: "Id file only containing the ids"
    out_meta: "Outfile containing meta information"
    fdr_cut_off: "Fixed FDR cutoff used for seeding (only assays where at least one peakgroup in one run is below this cutoff will be included in the result), see also target_fdr for a non-fixed cutoff"
    target_fdr: "If parameter estimation is used, which target FDR should be optimized for. If set to lower than 0, parameter estimation is turned off."
    max_fdr_quality: "Extension m-score score cutoff, peakgroups of this quality will still be considered for alignment during extension"
    max_rt_diff: "Maximal difference in RT (in seconds) for two aligned features"
    iso_max_rt_diff: "Maximal difference in RT (in seconds) for two isotopic channels in the same run"
    frac_selected: "Do not write peakgroup if selected in less than this fraction of runs (range 0 to 1)"
    method: "Method to use for the clustering (best_overall, best_cluster_score or global_best_cluster_score, global_best_overall, LocalMST, LocalMSTAllCluster)."
    verbosity: "Verbosity (0 = little)"
    matrix_output_method: "Which columns are written besides Intensity (none, RT, score, source or full)"
    realign_method: "RT alignment method (diRT, linear, splineR, splineR_external, splinePy, lowess, lowess_biostats, lowess_statsmodels, lowess_cython, nonCVSpline, CVSpline, Earth, WeightedNearestNeighbour, SmoothLLDMedian, None)"
    force: "Force alignment"
    d_score_cut_off: "Discard all peakgroups below this d-score"
    nr_high_conf_exp: "Number of experiments in which the peptide needs to be identified with confidence above fdr_cutoff"
    read_method: "Read full or minimal transition groups (cminimal,minimal,full)"
    tmpdir: "Temporary directory"
    alignment_score: "Minimal score needed for a feature to be considered for alignment between runs"
    realign_runs: "Deprecated option (equals '--realign_method external_r')"
    use_external_r: "Deprecated option (equals '--realign_method external_r')"
  }
}