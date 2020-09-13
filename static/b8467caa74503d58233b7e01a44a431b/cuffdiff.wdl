version 1.0

task Cuffdiff {
  input {
    Directory? oslash_output_dir
    Boolean? lslash_labels
    Boolean? fdr
    Boolean? m_slash_mask_file
    Boolean? c_slash_contrast_file
    Boolean? b_slash_frag_bias_correct
    Boolean? us_lash_multi_read_correct
    Boolean? p_slash_num_threads
    Boolean? no_diff
    Boolean? no_js_tests
    Boolean? t_slash_time_series
    Boolean? library_type
    Boolean? dispersion_method
    Boolean? library_norm_method
    Boolean? m_slash_frag_len_mean
    Boolean? s_slash_frag_len_std_dev
    Boolean? c_slash_min_alignment_count
    Boolean? max_mle_iterations
    Boolean? compatible_hits_norm
    Boolean? total_hits_norm
    Boolean? v_slash_verbose
    Boolean? q_slash_quiet
    Boolean? seed
    Boolean? no_update_check
    Boolean? emit_count_tables
    Boolean? max_bundle_frags
    Boolean? num_frag_count_draws
    Boolean? num_frag_assign_draws
    Boolean? max_frag_multi_hits
    Boolean? min_outlier_p
    Boolean? min_reps_for_js_test
    Boolean? no_effective_length_correction
    Boolean? no_length_correction
    Boolean? n_slash_upper_quartile_norm
    Boolean? geometric_norm
    Boolean? raw_mapped_norm
    Boolean? poisson_dispersion
    Boolean? read_skip_fraction
    Boolean? no_read_pairs
    Boolean? trim_read_length
    Boolean? no_scv_correction
    String ff_first_strand
    String ff_un_stranded
    String fr_second_strand
    String trans_frags
    String blind
    String poisson
    String classic_fp_km
    String geometric
  }
  command <<<
    cuffdiff \
      ~{ff_first_strand} \
      ~{ff_un_stranded} \
      ~{fr_second_strand} \
      ~{trans_frags} \
      ~{blind} \
      ~{poisson} \
      ~{classic_fp_km} \
      ~{geometric} \
      ~{if (oslash_output_dir) then "-o/--output-dir" else ""} \
      ~{if (lslash_labels) then "-L/--labels" else ""} \
      ~{if (fdr) then "--FDR" else ""} \
      ~{if (m_slash_mask_file) then "-M/--mask-file" else ""} \
      ~{if (c_slash_contrast_file) then "-C/--contrast-file" else ""} \
      ~{if (b_slash_frag_bias_correct) then "-b/--frag-bias-correct" else ""} \
      ~{if (us_lash_multi_read_correct) then "-u/--multi-read-correct" else ""} \
      ~{if (p_slash_num_threads) then "-p/--num-threads" else ""} \
      ~{if (no_diff) then "--no-diff" else ""} \
      ~{if (no_js_tests) then "--no-js-tests" else ""} \
      ~{if (t_slash_time_series) then "-T/--time-series" else ""} \
      ~{if (library_type) then "--library-type" else ""} \
      ~{if (dispersion_method) then "--dispersion-method" else ""} \
      ~{if (library_norm_method) then "--library-norm-method" else ""} \
      ~{if (m_slash_frag_len_mean) then "-m/--frag-len-mean" else ""} \
      ~{if (s_slash_frag_len_std_dev) then "-s/--frag-len-std-dev" else ""} \
      ~{if (c_slash_min_alignment_count) then "-c/--min-alignment-count" else ""} \
      ~{if (max_mle_iterations) then "--max-mle-iterations" else ""} \
      ~{if (compatible_hits_norm) then "--compatible-hits-norm" else ""} \
      ~{if (total_hits_norm) then "--total-hits-norm" else ""} \
      ~{if (v_slash_verbose) then "-v/--verbose" else ""} \
      ~{if (q_slash_quiet) then "-q/--quiet" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if (no_update_check) then "--no-update-check" else ""} \
      ~{if (emit_count_tables) then "--emit-count-tables" else ""} \
      ~{if (max_bundle_frags) then "--max-bundle-frags" else ""} \
      ~{if (num_frag_count_draws) then "--num-frag-count-draws" else ""} \
      ~{if (num_frag_assign_draws) then "--num-frag-assign-draws" else ""} \
      ~{if (max_frag_multi_hits) then "--max-frag-multihits" else ""} \
      ~{if (min_outlier_p) then "--min-outlier-p" else ""} \
      ~{if (min_reps_for_js_test) then "--min-reps-for-js-test" else ""} \
      ~{if (no_effective_length_correction) then "--no-effective-length-correction" else ""} \
      ~{if (no_length_correction) then "--no-length-correction" else ""} \
      ~{if (n_slash_upper_quartile_norm) then "-N/--upper-quartile-norm" else ""} \
      ~{if (geometric_norm) then "--geometric-norm" else ""} \
      ~{if (raw_mapped_norm) then "--raw-mapped-norm" else ""} \
      ~{if (poisson_dispersion) then "--poisson-dispersion" else ""} \
      ~{if (read_skip_fraction) then "--read-skip-fraction" else ""} \
      ~{if (no_read_pairs) then "--no-read-pairs" else ""} \
      ~{if (trim_read_length) then "--trim-read-length" else ""} \
      ~{if (no_scv_correction) then "--no-scv-correction" else ""}
  >>>
  parameter_meta {
    oslash_output_dir: "write all output files to this directory              [ default:     ./ ]"
    lslash_labels: "comma-separated list of condition labels"
    fdr: "False discovery rate used in testing                  [ default:   0.05 ]"
    m_slash_mask_file: "ignore all alignment within transcripts in this file  [ default:   NULL ]"
    c_slash_contrast_file: "Perform the constrasts specified in this file         [ default:   NULL ]"
    b_slash_frag_bias_correct: "use bias correction - reference fasta required        [ default:   NULL ]"
    us_lash_multi_read_correct: "use 'rescue method' for multi-reads                   [ default:  FALSE ]"
    p_slash_num_threads: "number of threads used during quantification          [ default:      1 ]"
    no_diff: "Don't generate differential analysis files            [ default:  FALSE ]"
    no_js_tests: "Don't perform isoform switching tests                 [ default:  FALSE ]"
    t_slash_time_series: "treat samples as a time-series                        [ default:  FALSE ]"
    library_type: "Library prep used for input reads                     [ default:  below ]"
    dispersion_method: "Method used to estimate dispersion models             [ default:  below ]"
    library_norm_method: "Method used to normalize library sizes                [ default:  below ]"
    m_slash_frag_len_mean: "average fragment length (unpaired reads only)         [ default:    200 ]"
    s_slash_frag_len_std_dev: "fragment length std deviation (unpaired reads only)   [ default:     80 ]"
    c_slash_min_alignment_count: "minimum number of alignments in a locus for testing   [ default:   10 ]"
    max_mle_iterations: "maximum iterations allowed for MLE calculation        [ default:   5000 ]"
    compatible_hits_norm: "count hits compatible with reference RNAs only        [ default:   TRUE ]"
    total_hits_norm: "count all hits for normalization                      [ default:  FALSE ]"
    v_slash_verbose: "log-friendly verbose processing (no progress bar)     [ default:  FALSE ]"
    q_slash_quiet: "log-friendly quiet processing (no progress bar)       [ default:  FALSE ]"
    seed: "value of random number generator seed                 [ default:      0 ]"
    no_update_check: "do not contact server to check for update availability[ default:  FALSE ]"
    emit_count_tables: "print count tables used to fit overdispersion         [    DEPRECATED   ]"
    max_bundle_frags: "maximum fragments allowed in a bundle before skipping [ default: 500000 ]"
    num_frag_count_draws: "Number of fragment generation samples                 [ default:    100 ]"
    num_frag_assign_draws: "Number of fragment assignment samples per generation  [ default:     50 ]"
    max_frag_multi_hits: "Maximum number of alignments allowed per fragment     [ default: unlim  ]"
    min_outlier_p: "Min replicate p value to admit for testing            [    DEPRECATED   ]"
    min_reps_for_js_test: "Replicates needed for relative isoform shift testing  [ default:      3 ]"
    no_effective_length_correction: "No effective length correction                  [ default:  FALSE ]"
    no_length_correction: "No length correction                                  [ default:  FALSE ]"
    n_slash_upper_quartile_norm: "Deprecated, use --library-norm-method                 [    DEPRECATED   ]"
    geometric_norm: "Deprecated, use --library-norm-method                 [    DEPRECATED   ]"
    raw_mapped_norm: "Deprecated, use --library-norm-method                 [    DEPRECATED   ]"
    poisson_dispersion: "Deprecated, use --dispersion-method                   [    DEPRECATED   ]"
    read_skip_fraction: "Skip a random subset of reads this size               [ default:    0.0 ]"
    no_read_pairs: "Break all read pairs                                  [ default:  FALSE ]"
    trim_read_length: "Trim reads to be this long (keep 5' end)              [ default:   none ]"
    no_scv_correction: "Disable SCV correction                                [ default:  FALSE ]"
    ff_first_strand: "ff-secondstrand"
    ff_un_stranded: "fr-firststrand"
    fr_second_strand: "fr-unstranded (default)"
    trans_frags: "Supported dispersion methods:"
    blind: "per-condition"
    poisson: "pooled (default)"
    classic_fp_km: "geometric (default)"
    geometric: "quartile"
  }
  output {
    File out_stdout = stdout()
    Directory out_oslash_output_dir = "${in_oslash_output_dir}"
  }
}