class: CommandLineTool
id: cuffdiff.cwl
inputs:
- id: in_oslash_output_dir
  doc: 'write all output files to this directory              [ default:     ./ ]'
  type: Directory
  inputBinding:
    prefix: -o/--output-dir
- id: in_lslash_labels
  doc: comma-separated list of condition labels
  type: boolean
  inputBinding:
    prefix: -L/--labels
- id: in_fdr
  doc: 'False discovery rate used in testing                  [ default:   0.05 ]'
  type: boolean
  inputBinding:
    prefix: --FDR
- id: in_m_slash_mask_file
  doc: 'ignore all alignment within transcripts in this file  [ default:   NULL ]'
  type: boolean
  inputBinding:
    prefix: -M/--mask-file
- id: in_c_slash_contrast_file
  doc: 'Perform the constrasts specified in this file         [ default:   NULL ]'
  type: boolean
  inputBinding:
    prefix: -C/--contrast-file
- id: in_b_slash_frag_bias_correct
  doc: 'use bias correction - reference fasta required        [ default:   NULL ]'
  type: boolean
  inputBinding:
    prefix: -b/--frag-bias-correct
- id: in_us_lash_multi_read_correct
  doc: "use 'rescue method' for multi-reads                   [ default:  FALSE ]"
  type: boolean
  inputBinding:
    prefix: -u/--multi-read-correct
- id: in_p_slash_num_threads
  doc: 'number of threads used during quantification          [ default:      1 ]'
  type: boolean
  inputBinding:
    prefix: -p/--num-threads
- id: in_no_diff
  doc: "Don't generate differential analysis files            [ default:  FALSE ]"
  type: boolean
  inputBinding:
    prefix: --no-diff
- id: in_no_js_tests
  doc: "Don't perform isoform switching tests                 [ default:  FALSE ]"
  type: boolean
  inputBinding:
    prefix: --no-js-tests
- id: in_t_slash_time_series
  doc: 'treat samples as a time-series                        [ default:  FALSE ]'
  type: boolean
  inputBinding:
    prefix: -T/--time-series
- id: in_library_type
  doc: 'Library prep used for input reads                     [ default:  below ]'
  type: boolean
  inputBinding:
    prefix: --library-type
- id: in_dispersion_method
  doc: 'Method used to estimate dispersion models             [ default:  below ]'
  type: boolean
  inputBinding:
    prefix: --dispersion-method
- id: in_library_norm_method
  doc: 'Method used to normalize library sizes                [ default:  below ]'
  type: boolean
  inputBinding:
    prefix: --library-norm-method
- id: in_m_slash_frag_len_mean
  doc: 'average fragment length (unpaired reads only)         [ default:    200 ]'
  type: boolean
  inputBinding:
    prefix: -m/--frag-len-mean
- id: in_s_slash_frag_len_std_dev
  doc: 'fragment length std deviation (unpaired reads only)   [ default:     80 ]'
  type: boolean
  inputBinding:
    prefix: -s/--frag-len-std-dev
- id: in_c_slash_min_alignment_count
  doc: 'minimum number of alignments in a locus for testing   [ default:   10 ]'
  type: boolean
  inputBinding:
    prefix: -c/--min-alignment-count
- id: in_max_mle_iterations
  doc: 'maximum iterations allowed for MLE calculation        [ default:   5000 ]'
  type: boolean
  inputBinding:
    prefix: --max-mle-iterations
- id: in_compatible_hits_norm
  doc: 'count hits compatible with reference RNAs only        [ default:   TRUE ]'
  type: boolean
  inputBinding:
    prefix: --compatible-hits-norm
- id: in_total_hits_norm
  doc: 'count all hits for normalization                      [ default:  FALSE ]'
  type: boolean
  inputBinding:
    prefix: --total-hits-norm
- id: in_v_slash_verbose
  doc: 'log-friendly verbose processing (no progress bar)     [ default:  FALSE ]'
  type: boolean
  inputBinding:
    prefix: -v/--verbose
- id: in_q_slash_quiet
  doc: 'log-friendly quiet processing (no progress bar)       [ default:  FALSE ]'
  type: boolean
  inputBinding:
    prefix: -q/--quiet
- id: in_seed
  doc: 'value of random number generator seed                 [ default:      0 ]'
  type: boolean
  inputBinding:
    prefix: --seed
- id: in_no_update_check
  doc: 'do not contact server to check for update availability[ default:  FALSE ]'
  type: boolean
  inputBinding:
    prefix: --no-update-check
- id: in_emit_count_tables
  doc: print count tables used to fit overdispersion         [    DEPRECATED   ]
  type: boolean
  inputBinding:
    prefix: --emit-count-tables
- id: in_max_bundle_frags
  doc: 'maximum fragments allowed in a bundle before skipping [ default: 500000 ]'
  type: boolean
  inputBinding:
    prefix: --max-bundle-frags
- id: in_num_frag_count_draws
  doc: 'Number of fragment generation samples                 [ default:    100 ]'
  type: boolean
  inputBinding:
    prefix: --num-frag-count-draws
- id: in_num_frag_assign_draws
  doc: 'Number of fragment assignment samples per generation  [ default:     50 ]'
  type: boolean
  inputBinding:
    prefix: --num-frag-assign-draws
- id: in_max_frag_multi_hits
  doc: 'Maximum number of alignments allowed per fragment     [ default: unlim  ]'
  type: boolean
  inputBinding:
    prefix: --max-frag-multihits
- id: in_min_outlier_p
  doc: Min replicate p value to admit for testing            [    DEPRECATED   ]
  type: boolean
  inputBinding:
    prefix: --min-outlier-p
- id: in_min_reps_for_js_test
  doc: 'Replicates needed for relative isoform shift testing  [ default:      3 ]'
  type: boolean
  inputBinding:
    prefix: --min-reps-for-js-test
- id: in_no_effective_length_correction
  doc: 'No effective length correction                  [ default:  FALSE ]'
  type: boolean
  inputBinding:
    prefix: --no-effective-length-correction
- id: in_no_length_correction
  doc: 'No length correction                                  [ default:  FALSE ]'
  type: boolean
  inputBinding:
    prefix: --no-length-correction
- id: in_n_slash_upper_quartile_norm
  doc: Deprecated, use --library-norm-method                 [    DEPRECATED   ]
  type: boolean
  inputBinding:
    prefix: -N/--upper-quartile-norm
- id: in_geometric_norm
  doc: Deprecated, use --library-norm-method                 [    DEPRECATED   ]
  type: boolean
  inputBinding:
    prefix: --geometric-norm
- id: in_raw_mapped_norm
  doc: Deprecated, use --library-norm-method                 [    DEPRECATED   ]
  type: boolean
  inputBinding:
    prefix: --raw-mapped-norm
- id: in_poisson_dispersion
  doc: Deprecated, use --dispersion-method                   [    DEPRECATED   ]
  type: boolean
  inputBinding:
    prefix: --poisson-dispersion
- id: in_read_skip_fraction
  doc: 'Skip a random subset of reads this size               [ default:    0.0 ]'
  type: boolean
  inputBinding:
    prefix: --read-skip-fraction
- id: in_no_read_pairs
  doc: 'Break all read pairs                                  [ default:  FALSE ]'
  type: boolean
  inputBinding:
    prefix: --no-read-pairs
- id: in_trim_read_length
  doc: "Trim reads to be this long (keep 5' end)              [ default:   none ]"
  type: boolean
  inputBinding:
    prefix: --trim-read-length
- id: in_no_scv_correction
  doc: 'Disable SCV correction                                [ default:  FALSE ]'
  type: boolean
  inputBinding:
    prefix: --no-scv-correction
- id: in_ff_first_strand
  doc: ff-secondstrand
  type: string
  inputBinding:
    position: 0
- id: in_ff_un_stranded
  doc: fr-firststrand
  type: string
  inputBinding:
    position: 1
- id: in_fr_second_strand
  doc: fr-unstranded (default)
  type: string
  inputBinding:
    position: 2
- id: in_trans_frags
  doc: 'Supported dispersion methods:'
  type: string
  inputBinding:
    position: 3
- id: in_blind
  doc: per-condition
  type: string
  inputBinding:
    position: 4
- id: in_poisson
  doc: pooled (default)
  type: string
  inputBinding:
    position: 5
- id: in_classic_fp_km
  doc: geometric (default)
  type: string
  inputBinding:
    position: 0
- id: in_geometric
  doc: quartile
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_oslash_output_dir
  doc: 'write all output files to this directory              [ default:     ./ ]'
  type: Directory
  outputBinding:
    glob: $(inputs.in_oslash_output_dir)
cwlVersion: v1.1
baseCommand:
- cuffdiff
