class: CommandLineTool
id: cufflinks.cwl
inputs:
- id: in_oslash_output_dir
  doc: 'write all output files to this directory              [ default:     ./ ]'
  type: Directory
  inputBinding:
    prefix: -o/--output-dir
- id: in_p_slash_num_threads
  doc: 'number of threads used during analysis                [ default:      1 ]'
  type: boolean
  inputBinding:
    prefix: -p/--num-threads
- id: in_seed
  doc: 'value of random number generator seed                 [ default:      0 ]'
  type: boolean
  inputBinding:
    prefix: --seed
- id: in_g_slash_gtf
  doc: quantitate against reference transcript annotations
  type: boolean
  inputBinding:
    prefix: -G/--GTF
- id: in_g_slash_gtf_guide
  doc: use reference transcript annotation to guide assembly
  type: boolean
  inputBinding:
    prefix: -g/--GTF-guide
- id: in_m_slash_mask_file
  doc: ignore all alignment within transcripts in this file
  type: boolean
  inputBinding:
    prefix: -M/--mask-file
- id: in_b_slash_frag_bias_correct
  doc: 'use bias correction - reference fasta required        [ default:   NULL ]'
  type: boolean
  inputBinding:
    prefix: -b/--frag-bias-correct
- id: in_us_lash_multi_read_correct
  doc: "use 'rescue method' for multi-reads (more accurate)   [ default:  FALSE ]"
  type: boolean
  inputBinding:
    prefix: -u/--multi-read-correct
- id: in_library_type
  doc: 'library prep used for input reads                     [ default:  below ]'
  type: boolean
  inputBinding:
    prefix: --library-type
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
- id: in_max_mle_iterations
  doc: 'maximum iterations allowed for MLE calculation        [ default:   5000 ]'
  type: boolean
  inputBinding:
    prefix: --max-mle-iterations
- id: in_compatible_hits_norm
  doc: 'count hits compatible with reference RNAs only        [ default:  FALSE ]'
  type: boolean
  inputBinding:
    prefix: --compatible-hits-norm
- id: in_total_hits_norm
  doc: 'count all hits for normalization                      [ default:  TRUE  ]'
  type: boolean
  inputBinding:
    prefix: --total-hits-norm
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
- id: in_raw_mapped_norm
  doc: Deprecated, use --library-norm-method                 [    DEPRECATED   ]
  type: boolean
  inputBinding:
    prefix: --raw-mapped-norm
- id: in_lslash_label
  doc: 'assembled transcripts have this ID prefix             [ default:   CUFF ]'
  type: boolean
  inputBinding:
    prefix: -L/--label
- id: in_f_slash_min_isoform_fraction
  doc: 'suppress transcripts below this abundance level       [ default:   0.10 ]'
  type: boolean
  inputBinding:
    prefix: -F/--min-isoform-fraction
- id: in_j_slash_pre_mrna_fraction
  doc: 'suppress intra-intronic transcripts below this level  [ default:   0.15 ]'
  type: boolean
  inputBinding:
    prefix: -j/--pre-mrna-fraction
- id: in_i_slash_max_intron_length
  doc: 'ignore alignments with gaps longer than this          [ default: 300000 ]'
  type: boolean
  inputBinding:
    prefix: -I/--max-intron-length
- id: in_a_slash_jun_c_alpha
  doc: 'alpha for junction binomial test filter               [ default:  0.001 ]'
  type: boolean
  inputBinding:
    prefix: -a/--junc-alpha
- id: in_a_slash_small_anchor_fraction
  doc: "percent read overhang taken as 'suspiciously small'   [ default:   0.09 ]"
  type: boolean
  inputBinding:
    prefix: -A/--small-anchor-fraction
- id: in_min_frags_per_trans_frag
  doc: 'minimum number of fragments needed for new transfrags [ default:     10 ]'
  type: boolean
  inputBinding:
    prefix: --min-frags-per-transfrag
- id: in_overhang_tolerance
  doc: 'number of terminal exon bp to tolerate in introns     [ default:      8 ]'
  type: boolean
  inputBinding:
    prefix: --overhang-tolerance
- id: in_max_bundle_length
  doc: maximum genomic length allowed for a given bundle     [ default:3500000 ]
  type: boolean
  inputBinding:
    prefix: --max-bundle-length
- id: in_max_bundle_frags
  doc: 'maximum fragments allowed in a bundle before skipping [ default: 500000 ]'
  type: boolean
  inputBinding:
    prefix: --max-bundle-frags
- id: in_min_intron_length
  doc: 'minimum intron size allowed in genome                 [ default:     50 ]'
  type: boolean
  inputBinding:
    prefix: --min-intron-length
- id: in_trim_three_avg_cov_thresh
  doc: "minimum avg coverage required to attempt 3' trimming  [ default:     10 ]"
  type: boolean
  inputBinding:
    prefix: --trim-3-avgcov-thresh
- id: in_trim_three_drop_off_frac
  doc: "fraction of avg coverage below which to trim 3' end   [ default:    0.1 ]"
  type: boolean
  inputBinding:
    prefix: --trim-3-dropoff-frac
- id: in_max_multi_read_fraction
  doc: 'maximum fraction of allowed multireads per transcript [ default:   0.75 ]'
  type: boolean
  inputBinding:
    prefix: --max-multiread-fraction
- id: in_overlap_radius
  doc: 'maximum gap size to fill between transfrags (in bp)   [ default:     50 ]'
  type: boolean
  inputBinding:
    prefix: --overlap-radius
- id: in_no_faux_reads
  doc: 'disable tiling by faux reads                          [ default:  FALSE ]'
  type: boolean
  inputBinding:
    prefix: --no-faux-reads
- id: in_three_overhang_tolerance
  doc: "overhang allowed on 3' end when merging with reference[ default:    600 ]"
  type: boolean
  inputBinding:
    prefix: --3-overhang-tolerance
- id: in_intron_overhang_tolerance
  doc: 'overhang allowed inside reference intron when merging [ default:     30 ]'
  type: boolean
  inputBinding:
    prefix: --intron-overhang-tolerance
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
- id: in_no_update_check
  doc: 'do not contact server to check for update availability[ default:  FALSE ]'
  type: boolean
  inputBinding:
    prefix: --no-update-check
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
  doc: 'Supported library normalization methods:'
  type: string
  inputBinding:
    position: 3
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
- cufflinks
