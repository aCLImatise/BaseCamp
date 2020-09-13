version 1.0

task Cuffquant {
  input {
    Directory? oslash_output_dir
    Boolean? m_slash_mask_file
    Boolean? b_slash_frag_bias_correct
    Boolean? us_lash_multi_read_correct
    Boolean? p_slash_num_threads
    Boolean? library_type
    Boolean? m_slash_frag_len_mean
    Boolean? s_slash_frag_len_std_dev
    Boolean? c_slash_min_alignment_count
    Boolean? max_mle_iterations
    Boolean? v_slash_verbose
    Boolean? q_slash_quiet
    Boolean? seed
    Boolean? no_update_check
    Boolean? max_bundle_frags
    Boolean? max_frag_multi_hits
    Boolean? no_effective_length_correction
    Boolean? no_length_correction
    Boolean? read_skip_fraction
    Boolean? no_read_pairs
    Boolean? trim_read_length
    Boolean? no_scv_correction
    String ff_first_strand
    String ff_un_stranded
    String fr_second_strand
  }
  command <<<
    cuffquant \
      ~{ff_first_strand} \
      ~{ff_un_stranded} \
      ~{fr_second_strand} \
      ~{if (oslash_output_dir) then "-o/--output-dir" else ""} \
      ~{if (m_slash_mask_file) then "-M/--mask-file" else ""} \
      ~{if (b_slash_frag_bias_correct) then "-b/--frag-bias-correct" else ""} \
      ~{if (us_lash_multi_read_correct) then "-u/--multi-read-correct" else ""} \
      ~{if (p_slash_num_threads) then "-p/--num-threads" else ""} \
      ~{if (library_type) then "--library-type" else ""} \
      ~{if (m_slash_frag_len_mean) then "-m/--frag-len-mean" else ""} \
      ~{if (s_slash_frag_len_std_dev) then "-s/--frag-len-std-dev" else ""} \
      ~{if (c_slash_min_alignment_count) then "-c/--min-alignment-count" else ""} \
      ~{if (max_mle_iterations) then "--max-mle-iterations" else ""} \
      ~{if (v_slash_verbose) then "-v/--verbose" else ""} \
      ~{if (q_slash_quiet) then "-q/--quiet" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if (no_update_check) then "--no-update-check" else ""} \
      ~{if (max_bundle_frags) then "--max-bundle-frags" else ""} \
      ~{if (max_frag_multi_hits) then "--max-frag-multihits" else ""} \
      ~{if (no_effective_length_correction) then "--no-effective-length-correction" else ""} \
      ~{if (no_length_correction) then "--no-length-correction" else ""} \
      ~{if (read_skip_fraction) then "--read-skip-fraction" else ""} \
      ~{if (no_read_pairs) then "--no-read-pairs" else ""} \
      ~{if (trim_read_length) then "--trim-read-length" else ""} \
      ~{if (no_scv_correction) then "--no-scv-correction" else ""}
  >>>
  parameter_meta {
    oslash_output_dir: "write all output files to this directory              [ default:     ./ ]"
    m_slash_mask_file: "ignore all alignment within transcripts in this file  [ default:   NULL ]"
    b_slash_frag_bias_correct: "use bias correction - reference fasta required        [ default:   NULL ]"
    us_lash_multi_read_correct: "use 'rescue method' for multi-reads                   [ default:  FALSE ]"
    p_slash_num_threads: "number of threads used during quantification          [ default:      1 ]"
    library_type: "Library prep used for input reads                     [ default:  below ]"
    m_slash_frag_len_mean: "average fragment length (unpaired reads only)         [ default:    200 ]"
    s_slash_frag_len_std_dev: "fragment length std deviation (unpaired reads only)   [ default:     80 ]"
    c_slash_min_alignment_count: "minimum number of alignments in a locus for testing   [ default:   10 ]"
    max_mle_iterations: "maximum iterations allowed for MLE calculation        [ default:   5000 ]"
    v_slash_verbose: "log-friendly verbose processing (no progress bar)     [ default:  FALSE ]"
    q_slash_quiet: "log-friendly quiet processing (no progress bar)       [ default:  FALSE ]"
    seed: "value of random number generator seed                 [ default:      0 ]"
    no_update_check: "do not contact server to check for update availability[ default:  FALSE ]"
    max_bundle_frags: "maximum fragments allowed in a bundle before skipping [ default: 500000 ]"
    max_frag_multi_hits: "Maximum number of alignments allowed per fragment     [ default: unlim  ]"
    no_effective_length_correction: "No effective length correction                  [ default:  FALSE ]"
    no_length_correction: "No length correction                                  [ default:  FALSE ]"
    read_skip_fraction: "Skip a random subset of reads this size               [ default:    0.0 ]"
    no_read_pairs: "Break all read pairs                                  [ default:  FALSE ]"
    trim_read_length: "Trim reads to be this long (keep 5' end)              [ default:   none ]"
    no_scv_correction: "Disable SCV correction                                [ default:  FALSE ]"
    ff_first_strand: "ff-secondstrand"
    ff_un_stranded: "fr-firststrand"
    fr_second_strand: "fr-unstranded (default)"
  }
  output {
    File out_stdout = stdout()
    Directory out_oslash_output_dir = "${in_oslash_output_dir}"
  }
}