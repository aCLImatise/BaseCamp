version 1.0

task Cufflinks {
  input {
    Directory? oslash_output_dir
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
    String ff_first_strand
    String ff_un_stranded
    String fr_second_strand
    String trans_frags
  }
  command <<<
    cufflinks \
      ~{ff_first_strand} \
      ~{ff_un_stranded} \
      ~{fr_second_strand} \
      ~{trans_frags} \
      ~{if (oslash_output_dir) then "-o/--output-dir" else ""} \
      ~{if (p_slash_num_threads) then "-p/--num-threads" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if (g_slash_gtf) then "-G/--GTF" else ""} \
      ~{if (g_slash_gtf_guide) then "-g/--GTF-guide" else ""} \
      ~{if (m_slash_mask_file) then "-M/--mask-file" else ""} \
      ~{if (b_slash_frag_bias_correct) then "-b/--frag-bias-correct" else ""} \
      ~{if (us_lash_multi_read_correct) then "-u/--multi-read-correct" else ""} \
      ~{if (library_type) then "--library-type" else ""} \
      ~{if (library_norm_method) then "--library-norm-method" else ""} \
      ~{if (m_slash_frag_len_mean) then "-m/--frag-len-mean" else ""} \
      ~{if (s_slash_frag_len_std_dev) then "-s/--frag-len-std-dev" else ""} \
      ~{if (max_mle_iterations) then "--max-mle-iterations" else ""} \
      ~{if (compatible_hits_norm) then "--compatible-hits-norm" else ""} \
      ~{if (total_hits_norm) then "--total-hits-norm" else ""} \
      ~{if (num_frag_count_draws) then "--num-frag-count-draws" else ""} \
      ~{if (num_frag_assign_draws) then "--num-frag-assign-draws" else ""} \
      ~{if (max_frag_multi_hits) then "--max-frag-multihits" else ""} \
      ~{if (no_effective_length_correction) then "--no-effective-length-correction" else ""} \
      ~{if (no_length_correction) then "--no-length-correction" else ""} \
      ~{if (n_slash_upper_quartile_norm) then "-N/--upper-quartile-norm" else ""} \
      ~{if (raw_mapped_norm) then "--raw-mapped-norm" else ""} \
      ~{if (lslash_label) then "-L/--label" else ""} \
      ~{if (f_slash_min_isoform_fraction) then "-F/--min-isoform-fraction" else ""} \
      ~{if (j_slash_pre_mrna_fraction) then "-j/--pre-mrna-fraction" else ""} \
      ~{if (i_slash_max_intron_length) then "-I/--max-intron-length" else ""} \
      ~{if (a_slash_jun_c_alpha) then "-a/--junc-alpha" else ""} \
      ~{if (a_slash_small_anchor_fraction) then "-A/--small-anchor-fraction" else ""} \
      ~{if (min_frags_per_trans_frag) then "--min-frags-per-transfrag" else ""} \
      ~{if (overhang_tolerance) then "--overhang-tolerance" else ""} \
      ~{if (max_bundle_length) then "--max-bundle-length" else ""} \
      ~{if (max_bundle_frags) then "--max-bundle-frags" else ""} \
      ~{if (min_intron_length) then "--min-intron-length" else ""} \
      ~{if (trim_three_avg_cov_thresh) then "--trim-3-avgcov-thresh" else ""} \
      ~{if (trim_three_drop_off_frac) then "--trim-3-dropoff-frac" else ""} \
      ~{if (max_multi_read_fraction) then "--max-multiread-fraction" else ""} \
      ~{if (overlap_radius) then "--overlap-radius" else ""} \
      ~{if (no_faux_reads) then "--no-faux-reads" else ""} \
      ~{if (three_overhang_tolerance) then "--3-overhang-tolerance" else ""} \
      ~{if (intron_overhang_tolerance) then "--intron-overhang-tolerance" else ""} \
      ~{if (v_slash_verbose) then "-v/--verbose" else ""} \
      ~{if (q_slash_quiet) then "-q/--quiet" else ""} \
      ~{if (no_update_check) then "--no-update-check" else ""}
  >>>
  parameter_meta {
    oslash_output_dir: "write all output files to this directory              [ default:     ./ ]"
    p_slash_num_threads: "number of threads used during analysis                [ default:      1 ]"
    seed: "value of random number generator seed                 [ default:      0 ]"
    g_slash_gtf: "quantitate against reference transcript annotations"
    g_slash_gtf_guide: "use reference transcript annotation to guide assembly"
    m_slash_mask_file: "ignore all alignment within transcripts in this file"
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
    ff_first_strand: "ff-secondstrand"
    ff_un_stranded: "fr-firststrand"
    fr_second_strand: "fr-unstranded (default)"
    trans_frags: "Supported library normalization methods:"
  }
  output {
    File out_stdout = stdout()
    Directory out_oslash_output_dir = "${in_oslash_output_dir}"
  }
}