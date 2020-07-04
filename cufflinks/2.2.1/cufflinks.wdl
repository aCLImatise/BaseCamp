version 1.0

task Cufflinks {
  input {
    Boolean? oslash_output_dir
    Boolean? p_slash_num_threads
    Boolean? seed
    Boolean? g_slash_gtf
    Boolean? g_slash_gtf_guide
    Boolean? m_slash_mask_file
    Boolean? b_slash_frag_bias_correct
    Boolean? us_lash_multi_read_correct
    Boolean? library_type
    Boolean? library_norm_method
    Boolean? m_slash_frag_len_mean
    Boolean? s_slash_frag_len_std_dev
    Boolean? max_mle_iterations
    Boolean? compatible_hits_norm
    Boolean? total_hits_norm
    Boolean? num_frag_count_draws
    Boolean? num_frag_assign_draws
    Boolean? max_frag_multi_hits
    Boolean? no_effective_length_correction
    Boolean? no_length_correction
    Boolean? n_slash_upper_quartile_norm
    Boolean? raw_mapped_norm
    Boolean? lslash_label
    Boolean? f_slash_min_isoform_fraction
    Boolean? j_slash_pre_mrna_fraction
    Boolean? i_slash_max_intron_length
    Boolean? a_slash_jun_c_alpha
    Boolean? a_slash_small_anchor_fraction
    Boolean? min_frags_per_trans_frag
    Boolean? overhang_tolerance
    Boolean? max_bundle_length
    Boolean? max_bundle_frags
    Boolean? min_intron_length
    Boolean? trim_three_avg_cov_thresh
    Boolean? trim_three_drop_off_frac
    Boolean? max_multi_read_fraction
    Boolean? overlap_radius
    Boolean? no_faux_reads
    Boolean? three_overhang_tolerance
    Boolean? intron_overhang_tolerance
    Boolean? v_slash_verbose
    Boolean? q_slash_quiet
    Boolean? no_update_check
    String hits_dots_am
  }
  command <<<
    cufflinks \
      ~{hits_dots_am} \
      ~{true="-o/--output-dir" false="" oslash_output_dir} \
      ~{true="-p/--num-threads" false="" p_slash_num_threads} \
      ~{true="--seed" false="" seed} \
      ~{true="-G/--GTF" false="" g_slash_gtf} \
      ~{true="-g/--GTF-guide" false="" g_slash_gtf_guide} \
      ~{true="-M/--mask-file" false="" m_slash_mask_file} \
      ~{true="-b/--frag-bias-correct" false="" b_slash_frag_bias_correct} \
      ~{true="-u/--multi-read-correct" false="" us_lash_multi_read_correct} \
      ~{true="--library-type" false="" library_type} \
      ~{true="--library-norm-method" false="" library_norm_method} \
      ~{true="-m/--frag-len-mean" false="" m_slash_frag_len_mean} \
      ~{true="-s/--frag-len-std-dev" false="" s_slash_frag_len_std_dev} \
      ~{true="--max-mle-iterations" false="" max_mle_iterations} \
      ~{true="--compatible-hits-norm" false="" compatible_hits_norm} \
      ~{true="--total-hits-norm" false="" total_hits_norm} \
      ~{true="--num-frag-count-draws" false="" num_frag_count_draws} \
      ~{true="--num-frag-assign-draws" false="" num_frag_assign_draws} \
      ~{true="--max-frag-multihits" false="" max_frag_multi_hits} \
      ~{true="--no-effective-length-correction" false="" no_effective_length_correction} \
      ~{true="--no-length-correction" false="" no_length_correction} \
      ~{true="-N/--upper-quartile-norm" false="" n_slash_upper_quartile_norm} \
      ~{true="--raw-mapped-norm" false="" raw_mapped_norm} \
      ~{true="-L/--label" false="" lslash_label} \
      ~{true="-F/--min-isoform-fraction" false="" f_slash_min_isoform_fraction} \
      ~{true="-j/--pre-mrna-fraction" false="" j_slash_pre_mrna_fraction} \
      ~{true="-I/--max-intron-length" false="" i_slash_max_intron_length} \
      ~{true="-a/--junc-alpha" false="" a_slash_jun_c_alpha} \
      ~{true="-A/--small-anchor-fraction" false="" a_slash_small_anchor_fraction} \
      ~{true="--min-frags-per-transfrag" false="" min_frags_per_trans_frag} \
      ~{true="--overhang-tolerance" false="" overhang_tolerance} \
      ~{true="--max-bundle-length" false="" max_bundle_length} \
      ~{true="--max-bundle-frags" false="" max_bundle_frags} \
      ~{true="--min-intron-length" false="" min_intron_length} \
      ~{true="--trim-3-avgcov-thresh" false="" trim_three_avg_cov_thresh} \
      ~{true="--trim-3-dropoff-frac" false="" trim_three_drop_off_frac} \
      ~{true="--max-multiread-fraction" false="" max_multi_read_fraction} \
      ~{true="--overlap-radius" false="" overlap_radius} \
      ~{true="--no-faux-reads" false="" no_faux_reads} \
      ~{true="--3-overhang-tolerance" false="" three_overhang_tolerance} \
      ~{true="--intron-overhang-tolerance" false="" intron_overhang_tolerance} \
      ~{true="-v/--verbose" false="" v_slash_verbose} \
      ~{true="-q/--quiet" false="" q_slash_quiet} \
      ~{true="--no-update-check" false="" no_update_check}
  >>>
  parameter_meta {
    oslash_output_dir: "write all output files to this directory              [ default:     ./ ]"
    p_slash_num_threads: "number of threads used during analysis                [ default:      1 ]"
    seed: "value of random number generator seed                 [ default:      0 ]"
    g_slash_gtf: "quantitate against reference transcript annotations                      "
    g_slash_gtf_guide: "use reference transcript annotation to guide assembly                   "
    m_slash_mask_file: "ignore all alignment within transcripts in this file                     "
    b_slash_frag_bias_correct: "use bias correction - reference fasta required        [ default:   NULL ]"
    us_lash_multi_read_correct: "use 'rescue method' for multi-reads (more accurate)   [ default:  FALSE ]"
    library_type: "library prep used for input reads                     [ default:  below ]"
    library_norm_method: "Method used to normalize library sizes                [ default:  below ]"
    m_slash_frag_len_mean: "average fragment length (unpaired reads only)         [ default:    200 ]"
    s_slash_frag_len_std_dev: "fragment length std deviation (unpaired reads only)   [ default:     80 ]"
    max_mle_iterations: "maximum iterations allowed for MLE calculation        [ default:   5000 ]"
    compatible_hits_norm: "count hits compatible with reference RNAs only        [ default:  FALSE ]"
    total_hits_norm: "count all hits for normalization                      [ default:  TRUE  ]"
    num_frag_count_draws: "Number of fragment generation samples                 [ default:    100 ]"
    num_frag_assign_draws: "Number of fragment assignment samples per generation  [ default:     50 ]"
    max_frag_multi_hits: "Maximum number of alignments allowed per fragment     [ default: unlim  ]"
    no_effective_length_correction: "No effective length correction                  [ default:  FALSE ]"
    no_length_correction: "No length correction                                  [ default:  FALSE ]"
    n_slash_upper_quartile_norm: "Deprecated, use --library-norm-method                 [    DEPRECATED   ]"
    raw_mapped_norm: "Deprecated, use --library-norm-method                 [    DEPRECATED   ]"
    lslash_label: "assembled transcripts have this ID prefix             [ default:   CUFF ]"
    f_slash_min_isoform_fraction: "suppress transcripts below this abundance level       [ default:   0.10 ]"
    j_slash_pre_mrna_fraction: "suppress intra-intronic transcripts below this level  [ default:   0.15 ]"
    i_slash_max_intron_length: "ignore alignments with gaps longer than this          [ default: 300000 ]"
    a_slash_jun_c_alpha: "alpha for junction binomial test filter               [ default:  0.001 ]"
    a_slash_small_anchor_fraction: "percent read overhang taken as 'suspiciously small'   [ default:   0.09 ]"
    min_frags_per_trans_frag: "minimum number of fragments needed for new transfrags [ default:     10 ]"
    overhang_tolerance: "number of terminal exon bp to tolerate in introns     [ default:      8 ]"
    max_bundle_length: "maximum genomic length allowed for a given bundle     [ default:3500000 ]"
    max_bundle_frags: "maximum fragments allowed in a bundle before skipping [ default: 500000 ]"
    min_intron_length: "minimum intron size allowed in genome                 [ default:     50 ]"
    trim_three_avg_cov_thresh: "minimum avg coverage required to attempt 3' trimming  [ default:     10 ]"
    trim_three_drop_off_frac: "fraction of avg coverage below which to trim 3' end   [ default:    0.1 ]"
    max_multi_read_fraction: "maximum fraction of allowed multireads per transcript [ default:   0.75 ]"
    overlap_radius: "maximum gap size to fill between transfrags (in bp)   [ default:     50 ]"
    no_faux_reads: "disable tiling by faux reads                          [ default:  FALSE ]"
    three_overhang_tolerance: "overhang allowed on 3' end when merging with reference[ default:    600 ]"
    intron_overhang_tolerance: "overhang allowed inside reference intron when merging [ default:     30 ]"
    v_slash_verbose: "log-friendly verbose processing (no progress bar)     [ default:  FALSE ]"
    q_slash_quiet: "log-friendly quiet processing (no progress bar)       [ default:  FALSE ]"
    no_update_check: "do not contact server to check for update availability[ default:  FALSE ]"
    hits_dots_am: ""
  }
}