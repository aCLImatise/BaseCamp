version 1.0

task Cuffdiff {
  input {
    Directory? output_dir
    Boolean? labels
    Boolean? fdr
    Boolean? mask_file
    Boolean? contrast_file
    Boolean? frag_bias_correct
    Boolean? multi_read_correct
    Boolean? num_threads
    Boolean? no_diff
    Boolean? no_js_tests
    Boolean? time_series
    Boolean? library_type
    Boolean? dispersion_method
    Boolean? library_norm_method
    Boolean? frag_len_mean
    Boolean? frag_len_std_dev
    Boolean? min_alignment_count
    Boolean? max_mle_iterations
    Boolean? compatible_hits_norm
    Boolean? total_hits_norm
    Boolean? verbose
    Boolean? quiet
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
    Boolean? upper_quartile_norm
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
      ~{if (output_dir) then "--output-dir" else ""} \
      ~{if (labels) then "--labels" else ""} \
      ~{if (fdr) then "--FDR" else ""} \
      ~{if (mask_file) then "--mask-file" else ""} \
      ~{if (contrast_file) then "--contrast-file" else ""} \
      ~{if (frag_bias_correct) then "--frag-bias-correct" else ""} \
      ~{if (multi_read_correct) then "--multi-read-correct" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (no_diff) then "--no-diff" else ""} \
      ~{if (no_js_tests) then "--no-js-tests" else ""} \
      ~{if (time_series) then "--time-series" else ""} \
      ~{if (library_type) then "--library-type" else ""} \
      ~{if (dispersion_method) then "--dispersion-method" else ""} \
      ~{if (library_norm_method) then "--library-norm-method" else ""} \
      ~{if (frag_len_mean) then "--frag-len-mean" else ""} \
      ~{if (frag_len_std_dev) then "--frag-len-std-dev" else ""} \
      ~{if (min_alignment_count) then "--min-alignment-count" else ""} \
      ~{if (max_mle_iterations) then "--max-mle-iterations" else ""} \
      ~{if (compatible_hits_norm) then "--compatible-hits-norm" else ""} \
      ~{if (total_hits_norm) then "--total-hits-norm" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
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
      ~{if (upper_quartile_norm) then "--upper-quartile-norm" else ""} \
      ~{if (geometric_norm) then "--geometric-norm" else ""} \
      ~{if (raw_mapped_norm) then "--raw-mapped-norm" else ""} \
      ~{if (poisson_dispersion) then "--poisson-dispersion" else ""} \
      ~{if (read_skip_fraction) then "--read-skip-fraction" else ""} \
      ~{if (no_read_pairs) then "--no-read-pairs" else ""} \
      ~{if (trim_read_length) then "--trim-read-length" else ""} \
      ~{if (no_scv_correction) then "--no-scv-correction" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_dir: "write all output files to this directory              [ default:     ./ ]"
    labels: "comma-separated list of condition labels"
    fdr: "False discovery rate used in testing                  [ default:   0.05 ]"
    mask_file: "ignore all alignment within transcripts in this file  [ default:   NULL ]"
    contrast_file: "Perform the constrasts specified in this file         [ default:   NULL ]"
    frag_bias_correct: "use bias correction - reference fasta required        [ default:   NULL ]"
    multi_read_correct: "use 'rescue method' for multi-reads                   [ default:  FALSE ]"
    num_threads: "number of threads used during quantification          [ default:      1 ]"
    no_diff: "Don't generate differential analysis files            [ default:  FALSE ]"
    no_js_tests: "Don't perform isoform switching tests                 [ default:  FALSE ]"
    time_series: "treat samples as a time-series                        [ default:  FALSE ]"
    library_type: "Library prep used for input reads                     [ default:  below ]"
    dispersion_method: "Method used to estimate dispersion models             [ default:  below ]"
    library_norm_method: "Method used to normalize library sizes                [ default:  below ]"
    frag_len_mean: "average fragment length (unpaired reads only)         [ default:    200 ]"
    frag_len_std_dev: "fragment length std deviation (unpaired reads only)   [ default:     80 ]"
    min_alignment_count: "minimum number of alignments in a locus for testing   [ default:   10 ]"
    max_mle_iterations: "maximum iterations allowed for MLE calculation        [ default:   5000 ]"
    compatible_hits_norm: "count hits compatible with reference RNAs only        [ default:   TRUE ]"
    total_hits_norm: "count all hits for normalization                      [ default:  FALSE ]"
    verbose: "log-friendly verbose processing (no progress bar)     [ default:  FALSE ]"
    quiet: "log-friendly quiet processing (no progress bar)       [ default:  FALSE ]"
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
    upper_quartile_norm: "Deprecated, use --library-norm-method                 [    DEPRECATED   ]"
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
    Directory out_output_dir = "${in_output_dir}"
  }
}