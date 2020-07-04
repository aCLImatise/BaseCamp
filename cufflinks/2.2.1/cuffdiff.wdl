version 1.0

task Cuffdiff {
  input {
    Boolean? oslash_output_dir
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
    String transcripts_dot_gtf
    String sample_one_hits_dots_am
    String sample_two_hits_dots_am
  }
  command <<<
    cuffdiff \
      ~{transcripts_dot_gtf} \
      ~{sample_one_hits_dots_am} \
      ~{sample_two_hits_dots_am} \
      ~{true="-o/--output-dir" false="" oslash_output_dir} \
      ~{true="-L/--labels" false="" lslash_labels} \
      ~{true="--FDR" false="" fdr} \
      ~{true="-M/--mask-file" false="" m_slash_mask_file} \
      ~{true="-C/--contrast-file" false="" c_slash_contrast_file} \
      ~{true="-b/--frag-bias-correct" false="" b_slash_frag_bias_correct} \
      ~{true="-u/--multi-read-correct" false="" us_lash_multi_read_correct} \
      ~{true="-p/--num-threads" false="" p_slash_num_threads} \
      ~{true="--no-diff" false="" no_diff} \
      ~{true="--no-js-tests" false="" no_js_tests} \
      ~{true="-T/--time-series" false="" t_slash_time_series} \
      ~{true="--library-type" false="" library_type} \
      ~{true="--dispersion-method" false="" dispersion_method} \
      ~{true="--library-norm-method" false="" library_norm_method} \
      ~{true="-m/--frag-len-mean" false="" m_slash_frag_len_mean} \
      ~{true="-s/--frag-len-std-dev" false="" s_slash_frag_len_std_dev} \
      ~{true="-c/--min-alignment-count" false="" c_slash_min_alignment_count} \
      ~{true="--max-mle-iterations" false="" max_mle_iterations} \
      ~{true="--compatible-hits-norm" false="" compatible_hits_norm} \
      ~{true="--total-hits-norm" false="" total_hits_norm} \
      ~{true="-v/--verbose" false="" v_slash_verbose} \
      ~{true="-q/--quiet" false="" q_slash_quiet} \
      ~{true="--seed" false="" seed} \
      ~{true="--no-update-check" false="" no_update_check} \
      ~{true="--emit-count-tables" false="" emit_count_tables} \
      ~{true="--max-bundle-frags" false="" max_bundle_frags} \
      ~{true="--num-frag-count-draws" false="" num_frag_count_draws} \
      ~{true="--num-frag-assign-draws" false="" num_frag_assign_draws} \
      ~{true="--max-frag-multihits" false="" max_frag_multi_hits} \
      ~{true="--min-outlier-p" false="" min_outlier_p} \
      ~{true="--min-reps-for-js-test" false="" min_reps_for_js_test} \
      ~{true="--no-effective-length-correction" false="" no_effective_length_correction} \
      ~{true="--no-length-correction" false="" no_length_correction} \
      ~{true="-N/--upper-quartile-norm" false="" n_slash_upper_quartile_norm} \
      ~{true="--geometric-norm" false="" geometric_norm} \
      ~{true="--raw-mapped-norm" false="" raw_mapped_norm} \
      ~{true="--poisson-dispersion" false="" poisson_dispersion} \
      ~{true="--read-skip-fraction" false="" read_skip_fraction} \
      ~{true="--no-read-pairs" false="" no_read_pairs} \
      ~{true="--trim-read-length" false="" trim_read_length} \
      ~{true="--no-scv-correction" false="" no_scv_correction}
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
    transcripts_dot_gtf: ""
    sample_one_hits_dots_am: ""
    sample_two_hits_dots_am: ""
  }
}