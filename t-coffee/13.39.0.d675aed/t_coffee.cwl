class: CommandLineTool
id: ../../../t_coffee.cwl
inputs:
- id: in_full_log
  doc: S       [0]
  type: boolean
  inputBinding:
    prefix: -full_log
- id: in_gene_pred_score
  doc: '[0]     nsd'
  type: long
  inputBinding:
    prefix: -genepred_score
- id: in_run_name
  doc: S       [0]
  type: boolean
  inputBinding:
    prefix: -run_name
- id: in_mem_mode
  doc: S       [0]     mem
  type: boolean
  inputBinding:
    prefix: -mem_mode
- id: in_extend
  doc: D       [1]     1
  type: boolean
  inputBinding:
    prefix: -extend
- id: in_extend_mode
  doc: S       [0]     very_fast_triplet
  type: boolean
  inputBinding:
    prefix: -extend_mode
- id: in_max_n_pair
  doc: D       [0]     10
  type: boolean
  inputBinding:
    prefix: -max_n_pair
- id: in_seq_name_for_quadruple_t
  doc: S       [0]     all
  type: boolean
  inputBinding:
    prefix: -seq_name_for_quadruplet
- id: in_compact
  doc: S       [0]     default
  type: boolean
  inputBinding:
    prefix: -compact
- id: in_clean
  doc: S       [0]     no
  type: boolean
  inputBinding:
    prefix: -clean
- id: in_do_self
  doc: FL      [0]     0
  type: boolean
  inputBinding:
    prefix: -do_self
- id: in_do_normalise
  doc: D       [0]     1000
  type: boolean
  inputBinding:
    prefix: -do_normalise
- id: in_template_file
  doc: S       [0]
  type: boolean
  inputBinding:
    prefix: -template_file
- id: in_setenv
  doc: S       [0]     0
  type: boolean
  inputBinding:
    prefix: -setenv
- id: in_export
  doc: S       [0]     0
  type: boolean
  inputBinding:
    prefix: -export
- id: in_template_mode
  doc: S       [0]
  type: boolean
  inputBinding:
    prefix: -template_mode
- id: in_flip
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -flip
- id: in_remove_template_file
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -remove_template_file
- id: in_profile_template_file
  doc: S       [0]
  type: boolean
  inputBinding:
    prefix: -profile_template_file
- id: in_in
  doc: S       [0]
  type: boolean
  inputBinding:
    prefix: -in
- id: in_seq
  doc: S       [0]
  type: boolean
  inputBinding:
    prefix: -seq
- id: in_aln
  doc: S       [0]
  type: boolean
  inputBinding:
    prefix: -aln
- id: in_method_limits
  doc: S       [0]
  type: boolean
  inputBinding:
    prefix: -method_limits
- id: in_method
  doc: S       [0]
  type: boolean
  inputBinding:
    prefix: -method
- id: in_lib
  doc: S       [0]
  type: boolean
  inputBinding:
    prefix: -lib
- id: in_profile
  doc: S       [0]
  type: boolean
  inputBinding:
    prefix: -profile
- id: in_profile_one
  doc: S       [0]
  type: boolean
  inputBinding:
    prefix: -profile1
- id: in_profile_two
  doc: S       [0]
  type: boolean
  inputBinding:
    prefix: -profile2
- id: in_pdb
  doc: S       [0]
  type: boolean
  inputBinding:
    prefix: -pdb
- id: in_relax_lib
  doc: D       [0]     1
  type: boolean
  inputBinding:
    prefix: -relax_lib
- id: in_filter_lib
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -filter_lib
- id: in_shrink_lib
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -shrink_lib
- id: in_out_lib
  doc: W_F     [0]     no
  type: boolean
  inputBinding:
    prefix: -out_lib
- id: in_out_lib_mode
  doc: S       [0]     primary
  type: boolean
  inputBinding:
    prefix: -out_lib_mode
- id: in_lib_only
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -lib_only
- id: in_out_seq_weight
  doc: W_F     [0]     no
  type: boolean
  inputBinding:
    prefix: -outseqweight
- id: in_seq_source
  doc: S       [0]     ANY
  type: boolean
  inputBinding:
    prefix: -seq_source
- id: in_cosmetic_penalty
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -cosmetic_penalty
- id: in_gap_open
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -gapopen
- id: in_gap_ext
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -gapext
- id: in_f_gap_open
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -fgapopen
- id: in_f_gap_ext
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -fgapext
- id: in_no_match
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -nomatch
- id: in_new_tree
  doc: W_F     [0]     default
  type: boolean
  inputBinding:
    prefix: -newtree
- id: in_tree
  doc: W_F     [0]     NO
  type: boolean
  inputBinding:
    prefix: -tree
- id: in_use_tree
  doc: R_F     [0]
  type: boolean
  inputBinding:
    prefix: -usetree
- id: in_tree_mode
  doc: S       [0]     nj
  type: boolean
  inputBinding:
    prefix: -tree_mode
- id: in_distance_matrix_mode
  doc: S       [0]     ktup
  type: boolean
  inputBinding:
    prefix: -distance_matrix_mode
- id: in_distance_matrix_sim_mode
  doc: S       [0]     idmat_sim1
  type: boolean
  inputBinding:
    prefix: -distance_matrix_sim_mode
- id: in_quick_tree
  doc: FL      [0]     0
  type: boolean
  inputBinding:
    prefix: -quicktree
- id: in_outfile
  doc: W_F     [0]     default
  type: boolean
  inputBinding:
    prefix: -outfile
- id: in_maximise
  doc: FL      [1]     1
  type: boolean
  inputBinding:
    prefix: -maximise
- id: in_output
  doc: S       [0]     aln     html
  type: boolean
  inputBinding:
    prefix: -output
- id: in_len
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -len
- id: in_in_file
  doc: R_F     [0]
  type: boolean
  inputBinding:
    prefix: -infile
- id: in_matrix
  doc: S       [0]     default
  type: boolean
  inputBinding:
    prefix: -matrix
- id: in_tg_mode
  doc: D       [0]     1
  type: boolean
  inputBinding:
    prefix: -tg_mode
- id: in_profile_mode
  doc: S       [0]     cw_profile_profile
  type: boolean
  inputBinding:
    prefix: -profile_mode
- id: in_profile_comparison
  doc: S       [0]     profile
  type: boolean
  inputBinding:
    prefix: -profile_comparison
- id: in_dp_mode
  doc: S       [0]     linked_pair_wise
  type: boolean
  inputBinding:
    prefix: -dp_mode
- id: in_k_tuple
  doc: D       [0]     1
  type: boolean
  inputBinding:
    prefix: -ktuple
- id: in_n_diag
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -ndiag
- id: in_diag_threshold
  doc: '[0]     0'
  type: long
  inputBinding:
    prefix: -diag_threshold
- id: in_diag_mode
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -diag_mode
- id: in_sim_matrix
  doc: S       [0]     vasiliky
  type: boolean
  inputBinding:
    prefix: -sim_matrix
- id: in_transform
  doc: S       [0]
  type: boolean
  inputBinding:
    prefix: -transform
- id: in_extend_seq
  doc: FL      [0]     0
  type: boolean
  inputBinding:
    prefix: -extend_seq
- id: in_out_order
  doc: S       [0]     input
  type: boolean
  inputBinding:
    prefix: -outorder
- id: in_in_order
  doc: S       [0]     aligned
  type: boolean
  inputBinding:
    prefix: -inorder
- id: in_seqno_s
  doc: S       [0]     off
  type: boolean
  inputBinding:
    prefix: -seqnos
- id: in_case
  doc: S       [0]     keep
  type: boolean
  inputBinding:
    prefix: -case
- id: in_cpu
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -cpu
- id: in_ulimit
  doc: D       [0]     -1
  type: boolean
  inputBinding:
    prefix: -ulimit
- id: in_max_n_seq
  doc: D       [0]     -1
  type: boolean
  inputBinding:
    prefix: -maxnseq
- id: in_maxlen
  doc: D       [0]     -1
  type: boolean
  inputBinding:
    prefix: -maxlen
- id: in_sample_dp
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -sample_dp
- id: in_weight
  doc: S       [0]     default
  type: boolean
  inputBinding:
    prefix: -weight
- id: in_seq_weight
  doc: S       [0]     no
  type: boolean
  inputBinding:
    prefix: -seq_weight
- id: in_align
  doc: FL      [1]     1
  type: boolean
  inputBinding:
    prefix: -align
- id: in_mocca
  doc: FL      [0]     0
  type: boolean
  inputBinding:
    prefix: -mocca
- id: in_domain
  doc: FL      [0]     0
  type: boolean
  inputBinding:
    prefix: -domain
- id: in_start
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -start
- id: in_scale
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -scale
- id: in_mocca_interactive
  doc: FL      [0]     0
  type: boolean
  inputBinding:
    prefix: -mocca_interactive
- id: in_method_evaluate_mode
  doc: S       [0]     default
  type: boolean
  inputBinding:
    prefix: -method_evaluate_mode
- id: in_color_mode
  doc: S       [0]     new
  type: boolean
  inputBinding:
    prefix: -color_mode
- id: in_aln_line_length
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -aln_line_length
- id: in_evaluate_mode
  doc: S       [0]     triplet
  type: boolean
  inputBinding:
    prefix: -evaluate_mode
- id: in_get_type
  doc: FL      [0]     0
  type: boolean
  inputBinding:
    prefix: -get_type
- id: in_clean_aln
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -clean_aln
- id: in_clean_threshold
  doc: D       [1]     1
  type: boolean
  inputBinding:
    prefix: -clean_threshold
- id: in_clean_iteration
  doc: D       [1]     1
  type: boolean
  inputBinding:
    prefix: -clean_iteration
- id: in_clean_evaluate_mode
  doc: S       [0]     t_coffee_fast
  type: boolean
  inputBinding:
    prefix: -clean_evaluate_mode
- id: in_extend_matrix
  doc: FL      [0]     0
  type: boolean
  inputBinding:
    prefix: -extend_matrix
- id: in_prot_min_sim
  doc: D       [40]    40
  type: boolean
  inputBinding:
    prefix: -prot_min_sim
- id: in_prot_max_sim
  doc: D       [90]    90
  type: boolean
  inputBinding:
    prefix: -prot_max_sim
- id: in_prot_trim
  doc: D       [20]    20
  type: boolean
  inputBinding:
    prefix: -prot_trim
- id: in_prot_min_cov
  doc: D       [40]    40
  type: boolean
  inputBinding:
    prefix: -prot_min_cov
- id: in_pdb_type
  doc: S       [0]     d
  type: boolean
  inputBinding:
    prefix: -pdb_type
- id: in_pdb_min_sim
  doc: D       [35]    35
  type: boolean
  inputBinding:
    prefix: -pdb_min_sim
- id: in_pdb_max_sim
  doc: D       [100]   100
  type: boolean
  inputBinding:
    prefix: -pdb_max_sim
- id: in_pdb_min_cov
  doc: D       [50]    50
  type: boolean
  inputBinding:
    prefix: -pdb_min_cov
- id: in_pdb_blast_server
  doc: W_F     [0]     EBI
  type: boolean
  inputBinding:
    prefix: -pdb_blast_server
- id: in_blast
  doc: W_F     [0]
  type: boolean
  inputBinding:
    prefix: -blast
- id: in_blast_server
  doc: W_F     [0]     EBI
  type: boolean
  inputBinding:
    prefix: -blast_server
- id: in_pdb_db
  doc: W_F     [0]     pdb
  type: boolean
  inputBinding:
    prefix: -pdb_db
- id: in_protein_db
  doc: W_F     [0]     uniref50
  type: boolean
  inputBinding:
    prefix: -protein_db
- id: in_method_log
  doc: W_F     [0]     no
  type: boolean
  inputBinding:
    prefix: -method_log
- id: in_struc_to_use
  doc: S       [0]
  type: boolean
  inputBinding:
    prefix: -struc_to_use
- id: in_cache
  doc: W_F     [0]     use
  type: boolean
  inputBinding:
    prefix: -cache
- id: in_print_cache
  doc: FL      [0]     0
  type: boolean
  inputBinding:
    prefix: -print_cache
- id: in_align_pdb_param_file
  doc: W_F     [0]     no
  type: boolean
  inputBinding:
    prefix: -align_pdb_param_file
- id: in_align_pdb_has_ch_mode
  doc: W_F     [0]     hasch_ca_trace_bubble
  type: boolean
  inputBinding:
    prefix: -align_pdb_hasch_mode
- id: in_external_aligner
  doc: S       [0]     NO
  type: boolean
  inputBinding:
    prefix: -external_aligner
- id: in_msa_mode
  doc: S       [0]     tree
  type: boolean
  inputBinding:
    prefix: -msa_mode
- id: in_et_mode
  doc: S       [0]     et
  type: boolean
  inputBinding:
    prefix: -et_mode
- id: in_master
  doc: S       [0]     no
  type: boolean
  inputBinding:
    prefix: -master
- id: in_blast_n_seq
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -blast_nseq
- id: in_l_align_n_top
  doc: D       [0]     10
  type: boolean
  inputBinding:
    prefix: -lalign_n_top
- id: in_iterate
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -iterate
- id: in_trim
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -trim
- id: in_split
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -split
- id: in_trim_file
  doc: S       [0]     default
  type: boolean
  inputBinding:
    prefix: -trimfile
- id: in_split_n_seq_th_res
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -split_nseq_thres
- id: in_split_score_th_res
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -split_score_thres
- id: in_check_pdb_status
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -check_pdb_status
- id: in_clean_seq_name
  doc: '[0]     0'
  type: long
  inputBinding:
    prefix: -clean_seq_name
- id: in_seq_to_keep
  doc: S       [0]
  type: boolean
  inputBinding:
    prefix: -seq_to_keep
- id: in_dpa_master_aln
  doc: '[0]'
  type: long
  inputBinding:
    prefix: -dpa_master_aln
- id: in_dpa_max_n_seq
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -dpa_maxnseq
- id: in_dpa_min_score_one
  doc: '[0]'
  type: long
  inputBinding:
    prefix: -dpa_min_score1
- id: in_dpa_min_score_two
  doc: '[0]'
  type: long
  inputBinding:
    prefix: -dpa_min_score2
- id: in_dpa_keep_tmpfile
  doc: FL      [0]     0
  type: boolean
  inputBinding:
    prefix: -dpa_keep_tmpfile
- id: in_dpa_debug
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -dpa_debug
- id: in_multi_core
  doc: S       [0]     templates_jobs_relax_msa_evaluate
  type: boolean
  inputBinding:
    prefix: -multi_core
- id: in_n_core
  doc: D       [0]     1
  type: boolean
  inputBinding:
    prefix: -n_core
- id: in_thread
  doc: D       [0]     1
  type: boolean
  inputBinding:
    prefix: -thread
- id: in_max_n_proc
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -max_n_proc
- id: in_lib_list
  doc: S       [0]
  type: boolean
  inputBinding:
    prefix: -lib_list
- id: in_prune_lib_mode
  doc: '[0]     5'
  type: long
  inputBinding:
    prefix: -prune_lib_mode
- id: in_tip
  doc: S       [0]     none
  type: boolean
  inputBinding:
    prefix: -tip
- id: in_rna_lib
  doc: S       [0]
  type: boolean
  inputBinding:
    prefix: -rna_lib
- id: in_no_warning
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -no_warning
- id: in_run_local_script
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -run_local_script
- id: in_proxy
  doc: S       [0]     unset
  type: boolean
  inputBinding:
    prefix: -proxy
- id: in_email
  doc: S       [0]
  type: boolean
  inputBinding:
    prefix: -email
- id: in_clean_over_a_ln
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -clean_overaln
- id: in_over_a_ln_param
  doc: S       [0]
  type: boolean
  inputBinding:
    prefix: -overaln_param
- id: in_over_a_ln_mode
  doc: S       [0]
  type: boolean
  inputBinding:
    prefix: -overaln_mode
- id: in_over_a_ln_model
  doc: S       [0]
  type: boolean
  inputBinding:
    prefix: -overaln_model
- id: in_over_a_ln_threshold
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -overaln_threshold
- id: in_over_a_ln_target
  doc: '[0]     0'
  type: long
  inputBinding:
    prefix: -overaln_target
- id: in_over_a_ln_p_one
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -overaln_P1
- id: in_over_a_ln_p_two
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -overaln_P2
- id: in_over_a_ln_p_three
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -overaln_P3
- id: in_over_a_ln_p_four
  doc: D       [0]     0
  type: boolean
  inputBinding:
    prefix: -overaln_P4
- id: in_exon_boundaries
  doc: S       [0]
  type: boolean
  inputBinding:
    prefix: -exon_boundaries
- id: in_display
  doc: D       [0]     100
  type: boolean
  inputBinding:
    prefix: -display
- id: in_error
  doc: ': -h IS NOT A PARAMETER  OF t_coffee [FATAL/t_coffee Version_13.39.0.d675aed]'
  type: boolean
  inputBinding:
    prefix: --ERROR
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- t_coffee
