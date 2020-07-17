version 1.0

task Cuffquant {
  input {
    Boolean? oslash_output_dir
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
    String cuff_diff
    String transcripts_dot_gtf
    String sample_one_hits_dots_am
    String sample_two_hits_dots_am
  }
  command <<<
    cuffquant \
      ~{cuff_diff} \
      ~{transcripts_dot_gtf} \
      ~{sample_one_hits_dots_am} \
      ~{sample_two_hits_dots_am} \
      ~{true="-o/--output-dir" false="" oslash_output_dir} \
      ~{true="-M/--mask-file" false="" m_slash_mask_file} \
      ~{true="-b/--frag-bias-correct" false="" b_slash_frag_bias_correct} \
      ~{true="-u/--multi-read-correct" false="" us_lash_multi_read_correct} \
      ~{true="-p/--num-threads" false="" p_slash_num_threads} \
      ~{true="--library-type" false="" library_type} \
      ~{true="-m/--frag-len-mean" false="" m_slash_frag_len_mean} \
      ~{true="-s/--frag-len-std-dev" false="" s_slash_frag_len_std_dev} \
      ~{true="-c/--min-alignment-count" false="" c_slash_min_alignment_count} \
      ~{true="--max-mle-iterations" false="" max_mle_iterations} \
      ~{true="-v/--verbose" false="" v_slash_verbose} \
      ~{true="-q/--quiet" false="" q_slash_quiet} \
      ~{true="--seed" false="" seed} \
      ~{true="--no-update-check" false="" no_update_check} \
      ~{true="--max-bundle-frags" false="" max_bundle_frags} \
      ~{true="--max-frag-multihits" false="" max_frag_multi_hits} \
      ~{true="--no-effective-length-correction" false="" no_effective_length_correction} \
      ~{true="--no-length-correction" false="" no_length_correction} \
      ~{true="--read-skip-fraction" false="" read_skip_fraction} \
      ~{true="--no-read-pairs" false="" no_read_pairs} \
      ~{true="--trim-read-length" false="" trim_read_length} \
      ~{true="--no-scv-correction" false="" no_scv_correction}
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
    cuff_diff: ""
    transcripts_dot_gtf: ""
    sample_one_hits_dots_am: ""
    sample_two_hits_dots_am: ""
  }
}