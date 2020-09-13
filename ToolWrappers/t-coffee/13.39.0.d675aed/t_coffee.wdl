version 1.0

task TCoffee {
  input {
    Boolean? full_log
    Int? gene_pred_score
    Boolean? run_name
    Boolean? mem_mode
    Boolean? extend
    Boolean? extend_mode
    Boolean? max_n_pair
    Boolean? seq_name_for_quadruple_t
    Boolean? compact
    Boolean? clean
    Boolean? do_self
    Boolean? do_normalise
    Boolean? template_file
    Boolean? setenv
    Boolean? export
    Boolean? template_mode
    Boolean? flip
    Boolean? remove_template_file
    Boolean? profile_template_file
    Boolean? in
    Boolean? seq
    Boolean? aln
    Boolean? method_limits
    Boolean? method
    Boolean? lib
    Boolean? profile
    Boolean? profile_one
    Boolean? profile_two
    Boolean? pdb
    Boolean? relax_lib
    Boolean? filter_lib
    Boolean? shrink_lib
    Boolean? out_lib
    Boolean? out_lib_mode
    Boolean? lib_only
    Boolean? out_seq_weight
    Boolean? seq_source
    Boolean? cosmetic_penalty
    Boolean? gap_open
    Boolean? gap_ext
    Boolean? f_gap_open
    Boolean? f_gap_ext
    Boolean? no_match
    Boolean? new_tree
    Boolean? tree
    Boolean? use_tree
    Boolean? tree_mode
    Boolean? distance_matrix_mode
    Boolean? distance_matrix_sim_mode
    Boolean? quick_tree
    Boolean? outfile
    Boolean? maximise
    Boolean? s_aln_html
    Boolean? len
    Boolean? in_file
    Boolean? matrix
    Boolean? tg_mode
    Boolean? profile_mode
    Boolean? profile_comparison
    Boolean? dp_mode
    Boolean? k_tuple
    Boolean? n_diag
    Int? diag_threshold
    Boolean? diag_mode
    Boolean? sim_matrix
    Boolean? transform
    Boolean? extend_seq
    Boolean? out_order
    Boolean? in_order
    Boolean? seqno_s
    Boolean? case
    Boolean? cpu
    Boolean? ulimit
    Boolean? max_n_seq
    Boolean? maxlen
    Boolean? sample_dp
    Boolean? weight
    Boolean? seq_weight
    Boolean? align
    Boolean? mocca
    Boolean? domain
    Boolean? start
    Boolean? scale
    Boolean? mocca_interactive
    Boolean? method_evaluate_mode
    Boolean? color_mode
    Boolean? aln_line_length
    Boolean? evaluate_mode
    Boolean? get_type
    Boolean? clean_aln
    Boolean? clean_threshold
    Boolean? clean_iteration
    Boolean? clean_evaluate_mode
    Boolean? extend_matrix
    Boolean? prot_min_sim
    Boolean? prot_max_sim
    Boolean? prot_trim
    Boolean? prot_min_cov
    Boolean? pdb_type
    Boolean? pdb_min_sim
    Boolean? pdb_max_sim
    Boolean? pdb_min_cov
    Boolean? pdb_blast_server
    Boolean? blast
    Boolean? blast_server
    Boolean? pdb_db
    Boolean? protein_db
    Boolean? method_log
    Boolean? struc_to_use
    Boolean? cache
    Boolean? print_cache
    Boolean? align_pdb_param_file
    Boolean? align_pdb_has_ch_mode
    Boolean? external_aligner
    Boolean? msa_mode
    Boolean? et_mode
    Boolean? master
    Boolean? blast_n_seq
    Boolean? l_align_n_top
    Boolean? iterate
    Boolean? trim
    Boolean? split
    Boolean? trim_file
    Boolean? split_n_seq_th_res
    Boolean? split_score_th_res
    Boolean? check_pdb_status
    Int? clean_seq_name
    Boolean? seq_to_keep
    Int? dpa_master_aln
    Boolean? dpa_max_n_seq
    Int? dpa_min_score_one
    Int? dpa_min_score_two
    Boolean? dpa_keep_tmpfile
    Boolean? dpa_debug
    Boolean? multi_core
    Boolean? n_core
    Boolean? thread
    Boolean? max_n_proc
    Boolean? lib_list
    Int? prune_lib_mode
    Boolean? tip
    Boolean? rna_lib
    Boolean? no_warning
    Boolean? run_local_script
    Boolean? proxy
    Boolean? email
    Boolean? clean_over_a_ln
    Boolean? over_a_ln_param
    Boolean? over_a_ln_mode
    Boolean? over_a_ln_model
    Boolean? over_a_ln_threshold
    Int? over_a_ln_target
    Boolean? over_a_ln_p_one
    Boolean? over_a_ln_p_two
    Boolean? over_a_ln_p_three
    Boolean? over_a_ln_p_four
    Boolean? exon_boundaries
    Boolean? display
    Boolean? error
  }
  command <<<
    t_coffee \
      ~{if (full_log) then "-full_log" else ""} \
      ~{if defined(gene_pred_score) then ("-genepred_score " +  '"' + gene_pred_score + '"') else ""} \
      ~{if (run_name) then "-run_name" else ""} \
      ~{if (mem_mode) then "-mem_mode" else ""} \
      ~{if (extend) then "-extend" else ""} \
      ~{if (extend_mode) then "-extend_mode" else ""} \
      ~{if (max_n_pair) then "-max_n_pair" else ""} \
      ~{if (seq_name_for_quadruple_t) then "-seq_name_for_quadruplet" else ""} \
      ~{if (compact) then "-compact" else ""} \
      ~{if (clean) then "-clean" else ""} \
      ~{if (do_self) then "-do_self" else ""} \
      ~{if (do_normalise) then "-do_normalise" else ""} \
      ~{if (template_file) then "-template_file" else ""} \
      ~{if (setenv) then "-setenv" else ""} \
      ~{if (export) then "-export" else ""} \
      ~{if (template_mode) then "-template_mode" else ""} \
      ~{if (flip) then "-flip" else ""} \
      ~{if (remove_template_file) then "-remove_template_file" else ""} \
      ~{if (profile_template_file) then "-profile_template_file" else ""} \
      ~{if (in) then "-in" else ""} \
      ~{if (seq) then "-seq" else ""} \
      ~{if (aln) then "-aln" else ""} \
      ~{if (method_limits) then "-method_limits" else ""} \
      ~{if (method) then "-method" else ""} \
      ~{if (lib) then "-lib" else ""} \
      ~{if (profile) then "-profile" else ""} \
      ~{if (profile_one) then "-profile1" else ""} \
      ~{if (profile_two) then "-profile2" else ""} \
      ~{if (pdb) then "-pdb" else ""} \
      ~{if (relax_lib) then "-relax_lib" else ""} \
      ~{if (filter_lib) then "-filter_lib" else ""} \
      ~{if (shrink_lib) then "-shrink_lib" else ""} \
      ~{if (out_lib) then "-out_lib" else ""} \
      ~{if (out_lib_mode) then "-out_lib_mode" else ""} \
      ~{if (lib_only) then "-lib_only" else ""} \
      ~{if (out_seq_weight) then "-outseqweight" else ""} \
      ~{if (seq_source) then "-seq_source" else ""} \
      ~{if (cosmetic_penalty) then "-cosmetic_penalty" else ""} \
      ~{if (gap_open) then "-gapopen" else ""} \
      ~{if (gap_ext) then "-gapext" else ""} \
      ~{if (f_gap_open) then "-fgapopen" else ""} \
      ~{if (f_gap_ext) then "-fgapext" else ""} \
      ~{if (no_match) then "-nomatch" else ""} \
      ~{if (new_tree) then "-newtree" else ""} \
      ~{if (tree) then "-tree" else ""} \
      ~{if (use_tree) then "-usetree" else ""} \
      ~{if (tree_mode) then "-tree_mode" else ""} \
      ~{if (distance_matrix_mode) then "-distance_matrix_mode" else ""} \
      ~{if (distance_matrix_sim_mode) then "-distance_matrix_sim_mode" else ""} \
      ~{if (quick_tree) then "-quicktree" else ""} \
      ~{if (outfile) then "-outfile" else ""} \
      ~{if (maximise) then "-maximise" else ""} \
      ~{if (s_aln_html) then "-output" else ""} \
      ~{if (len) then "-len" else ""} \
      ~{if (in_file) then "-infile" else ""} \
      ~{if (matrix) then "-matrix" else ""} \
      ~{if (tg_mode) then "-tg_mode" else ""} \
      ~{if (profile_mode) then "-profile_mode" else ""} \
      ~{if (profile_comparison) then "-profile_comparison" else ""} \
      ~{if (dp_mode) then "-dp_mode" else ""} \
      ~{if (k_tuple) then "-ktuple" else ""} \
      ~{if (n_diag) then "-ndiag" else ""} \
      ~{if defined(diag_threshold) then ("-diag_threshold " +  '"' + diag_threshold + '"') else ""} \
      ~{if (diag_mode) then "-diag_mode" else ""} \
      ~{if (sim_matrix) then "-sim_matrix" else ""} \
      ~{if (transform) then "-transform" else ""} \
      ~{if (extend_seq) then "-extend_seq" else ""} \
      ~{if (out_order) then "-outorder" else ""} \
      ~{if (in_order) then "-inorder" else ""} \
      ~{if (seqno_s) then "-seqnos" else ""} \
      ~{if (case) then "-case" else ""} \
      ~{if (cpu) then "-cpu" else ""} \
      ~{if (ulimit) then "-ulimit" else ""} \
      ~{if (max_n_seq) then "-maxnseq" else ""} \
      ~{if (maxlen) then "-maxlen" else ""} \
      ~{if (sample_dp) then "-sample_dp" else ""} \
      ~{if (weight) then "-weight" else ""} \
      ~{if (seq_weight) then "-seq_weight" else ""} \
      ~{if (align) then "-align" else ""} \
      ~{if (mocca) then "-mocca" else ""} \
      ~{if (domain) then "-domain" else ""} \
      ~{if (start) then "-start" else ""} \
      ~{if (scale) then "-scale" else ""} \
      ~{if (mocca_interactive) then "-mocca_interactive" else ""} \
      ~{if (method_evaluate_mode) then "-method_evaluate_mode" else ""} \
      ~{if (color_mode) then "-color_mode" else ""} \
      ~{if (aln_line_length) then "-aln_line_length" else ""} \
      ~{if (evaluate_mode) then "-evaluate_mode" else ""} \
      ~{if (get_type) then "-get_type" else ""} \
      ~{if (clean_aln) then "-clean_aln" else ""} \
      ~{if (clean_threshold) then "-clean_threshold" else ""} \
      ~{if (clean_iteration) then "-clean_iteration" else ""} \
      ~{if (clean_evaluate_mode) then "-clean_evaluate_mode" else ""} \
      ~{if (extend_matrix) then "-extend_matrix" else ""} \
      ~{if (prot_min_sim) then "-prot_min_sim" else ""} \
      ~{if (prot_max_sim) then "-prot_max_sim" else ""} \
      ~{if (prot_trim) then "-prot_trim" else ""} \
      ~{if (prot_min_cov) then "-prot_min_cov" else ""} \
      ~{if (pdb_type) then "-pdb_type" else ""} \
      ~{if (pdb_min_sim) then "-pdb_min_sim" else ""} \
      ~{if (pdb_max_sim) then "-pdb_max_sim" else ""} \
      ~{if (pdb_min_cov) then "-pdb_min_cov" else ""} \
      ~{if (pdb_blast_server) then "-pdb_blast_server" else ""} \
      ~{if (blast) then "-blast" else ""} \
      ~{if (blast_server) then "-blast_server" else ""} \
      ~{if (pdb_db) then "-pdb_db" else ""} \
      ~{if (protein_db) then "-protein_db" else ""} \
      ~{if (method_log) then "-method_log" else ""} \
      ~{if (struc_to_use) then "-struc_to_use" else ""} \
      ~{if (cache) then "-cache" else ""} \
      ~{if (print_cache) then "-print_cache" else ""} \
      ~{if (align_pdb_param_file) then "-align_pdb_param_file" else ""} \
      ~{if (align_pdb_has_ch_mode) then "-align_pdb_hasch_mode" else ""} \
      ~{if (external_aligner) then "-external_aligner" else ""} \
      ~{if (msa_mode) then "-msa_mode" else ""} \
      ~{if (et_mode) then "-et_mode" else ""} \
      ~{if (master) then "-master" else ""} \
      ~{if (blast_n_seq) then "-blast_nseq" else ""} \
      ~{if (l_align_n_top) then "-lalign_n_top" else ""} \
      ~{if (iterate) then "-iterate" else ""} \
      ~{if (trim) then "-trim" else ""} \
      ~{if (split) then "-split" else ""} \
      ~{if (trim_file) then "-trimfile" else ""} \
      ~{if (split_n_seq_th_res) then "-split_nseq_thres" else ""} \
      ~{if (split_score_th_res) then "-split_score_thres" else ""} \
      ~{if (check_pdb_status) then "-check_pdb_status" else ""} \
      ~{if defined(clean_seq_name) then ("-clean_seq_name " +  '"' + clean_seq_name + '"') else ""} \
      ~{if (seq_to_keep) then "-seq_to_keep" else ""} \
      ~{if defined(dpa_master_aln) then ("-dpa_master_aln " +  '"' + dpa_master_aln + '"') else ""} \
      ~{if (dpa_max_n_seq) then "-dpa_maxnseq" else ""} \
      ~{if defined(dpa_min_score_one) then ("-dpa_min_score1 " +  '"' + dpa_min_score_one + '"') else ""} \
      ~{if defined(dpa_min_score_two) then ("-dpa_min_score2 " +  '"' + dpa_min_score_two + '"') else ""} \
      ~{if (dpa_keep_tmpfile) then "-dpa_keep_tmpfile" else ""} \
      ~{if (dpa_debug) then "-dpa_debug" else ""} \
      ~{if (multi_core) then "-multi_core" else ""} \
      ~{if (n_core) then "-n_core" else ""} \
      ~{if (thread) then "-thread" else ""} \
      ~{if (max_n_proc) then "-max_n_proc" else ""} \
      ~{if (lib_list) then "-lib_list" else ""} \
      ~{if defined(prune_lib_mode) then ("-prune_lib_mode " +  '"' + prune_lib_mode + '"') else ""} \
      ~{if (tip) then "-tip" else ""} \
      ~{if (rna_lib) then "-rna_lib" else ""} \
      ~{if (no_warning) then "-no_warning" else ""} \
      ~{if (run_local_script) then "-run_local_script" else ""} \
      ~{if (proxy) then "-proxy" else ""} \
      ~{if (email) then "-email" else ""} \
      ~{if (clean_over_a_ln) then "-clean_overaln" else ""} \
      ~{if (over_a_ln_param) then "-overaln_param" else ""} \
      ~{if (over_a_ln_mode) then "-overaln_mode" else ""} \
      ~{if (over_a_ln_model) then "-overaln_model" else ""} \
      ~{if (over_a_ln_threshold) then "-overaln_threshold" else ""} \
      ~{if defined(over_a_ln_target) then ("-overaln_target " +  '"' + over_a_ln_target + '"') else ""} \
      ~{if (over_a_ln_p_one) then "-overaln_P1" else ""} \
      ~{if (over_a_ln_p_two) then "-overaln_P2" else ""} \
      ~{if (over_a_ln_p_three) then "-overaln_P3" else ""} \
      ~{if (over_a_ln_p_four) then "-overaln_P4" else ""} \
      ~{if (exon_boundaries) then "-exon_boundaries" else ""} \
      ~{if (display) then "-display" else ""} \
      ~{if (error) then "--ERROR" else ""}
  >>>
  parameter_meta {
    full_log: "S       [0]"
    gene_pred_score: "[0]     nsd"
    run_name: "S       [0]"
    mem_mode: "S       [0]     mem"
    extend: "D       [1]     1"
    extend_mode: "S       [0]     very_fast_triplet"
    max_n_pair: "D       [0]     10"
    seq_name_for_quadruple_t: "S       [0]     all"
    compact: "S       [0]     default"
    clean: "S       [0]     no"
    do_self: "FL      [0]     0"
    do_normalise: "D       [0]     1000"
    template_file: "S       [0]"
    setenv: "S       [0]     0"
    export: "S       [0]     0"
    template_mode: "S       [0]"
    flip: "D       [0]     0"
    remove_template_file: "D       [0]     0"
    profile_template_file: "S       [0]"
    in: "S       [0]"
    seq: "S       [0]"
    aln: "S       [0]"
    method_limits: "S       [0]"
    method: "S       [0]"
    lib: "S       [0]"
    profile: "S       [0]"
    profile_one: "S       [0]"
    profile_two: "S       [0]"
    pdb: "S       [0]"
    relax_lib: "D       [0]     1"
    filter_lib: "D       [0]     0"
    shrink_lib: "D       [0]     0"
    out_lib: "W_F     [0]     no"
    out_lib_mode: "S       [0]     primary"
    lib_only: "D       [0]     0"
    out_seq_weight: "W_F     [0]     no"
    seq_source: "S       [0]     ANY"
    cosmetic_penalty: "D       [0]     0"
    gap_open: "D       [0]     0"
    gap_ext: "D       [0]     0"
    f_gap_open: "D       [0]     0"
    f_gap_ext: "D       [0]     0"
    no_match: "D       [0]     0"
    new_tree: "W_F     [0]     default"
    tree: "W_F     [0]     NO"
    use_tree: "R_F     [0]"
    tree_mode: "S       [0]     nj"
    distance_matrix_mode: "S       [0]     ktup"
    distance_matrix_sim_mode: "S       [0]     idmat_sim1"
    quick_tree: "FL      [0]     0"
    outfile: "W_F     [0]     default"
    maximise: "FL      [1]     1"
    s_aln_html: "S       [0]     aln     html"
    len: "D       [0]     0"
    in_file: "R_F     [0]"
    matrix: "S       [0]     default"
    tg_mode: "D       [0]     1"
    profile_mode: "S       [0]     cw_profile_profile"
    profile_comparison: "S       [0]     profile"
    dp_mode: "S       [0]     linked_pair_wise"
    k_tuple: "D       [0]     1"
    n_diag: "D       [0]     0"
    diag_threshold: "[0]     0"
    diag_mode: "D       [0]     0"
    sim_matrix: "S       [0]     vasiliky"
    transform: "S       [0]"
    extend_seq: "FL      [0]     0"
    out_order: "S       [0]     input"
    in_order: "S       [0]     aligned"
    seqno_s: "S       [0]     off"
    case: "S       [0]     keep"
    cpu: "D       [0]     0"
    ulimit: "D       [0]     -1"
    max_n_seq: "D       [0]     -1"
    maxlen: "D       [0]     -1"
    sample_dp: "D       [0]     0"
    weight: "S       [0]     default"
    seq_weight: "S       [0]     no"
    align: "FL      [1]     1"
    mocca: "FL      [0]     0"
    domain: "FL      [0]     0"
    start: "D       [0]     0"
    scale: "D       [0]     0"
    mocca_interactive: "FL      [0]     0"
    method_evaluate_mode: "S       [0]     default"
    color_mode: "S       [0]     new"
    aln_line_length: "D       [0]     0"
    evaluate_mode: "S       [0]     triplet"
    get_type: "FL      [0]     0"
    clean_aln: "D       [0]     0"
    clean_threshold: "D       [1]     1"
    clean_iteration: "D       [1]     1"
    clean_evaluate_mode: "S       [0]     t_coffee_fast"
    extend_matrix: "FL      [0]     0"
    prot_min_sim: "D       [40]    40"
    prot_max_sim: "D       [90]    90"
    prot_trim: "D       [20]    20"
    prot_min_cov: "D       [40]    40"
    pdb_type: "S       [0]     d"
    pdb_min_sim: "D       [35]    35"
    pdb_max_sim: "D       [100]   100"
    pdb_min_cov: "D       [50]    50"
    pdb_blast_server: "W_F     [0]     EBI"
    blast: "W_F     [0]"
    blast_server: "W_F     [0]     EBI"
    pdb_db: "W_F     [0]     pdb"
    protein_db: "W_F     [0]     uniref50"
    method_log: "W_F     [0]     no"
    struc_to_use: "S       [0]"
    cache: "W_F     [0]     use"
    print_cache: "FL      [0]     0"
    align_pdb_param_file: "W_F     [0]     no"
    align_pdb_has_ch_mode: "W_F     [0]     hasch_ca_trace_bubble"
    external_aligner: "S       [0]     NO"
    msa_mode: "S       [0]     tree"
    et_mode: "S       [0]     et"
    master: "S       [0]     no"
    blast_n_seq: "D       [0]     0"
    l_align_n_top: "D       [0]     10"
    iterate: "D       [0]     0"
    trim: "D       [0]     0"
    split: "D       [0]     0"
    trim_file: "S       [0]     default"
    split_n_seq_th_res: "D       [0]     0"
    split_score_th_res: "D       [0]     0"
    check_pdb_status: "D       [0]     0"
    clean_seq_name: "[0]     0"
    seq_to_keep: "S       [0]"
    dpa_master_aln: "[0]"
    dpa_max_n_seq: "D       [0]     0"
    dpa_min_score_one: "[0]"
    dpa_min_score_two: "[0]"
    dpa_keep_tmpfile: "FL      [0]     0"
    dpa_debug: "D       [0]     0"
    multi_core: "S       [0]     templates_jobs_relax_msa_evaluate"
    n_core: "D       [0]     1"
    thread: "D       [0]     1"
    max_n_proc: "D       [0]     0"
    lib_list: "S       [0]"
    prune_lib_mode: "[0]     5"
    tip: "S       [0]     none"
    rna_lib: "S       [0]"
    no_warning: "D       [0]     0"
    run_local_script: "D       [0]     0"
    proxy: "S       [0]     unset"
    email: "S       [0]"
    clean_over_a_ln: "D       [0]     0"
    over_a_ln_param: "S       [0]"
    over_a_ln_mode: "S       [0]"
    over_a_ln_model: "S       [0]"
    over_a_ln_threshold: "D       [0]     0"
    over_a_ln_target: "[0]     0"
    over_a_ln_p_one: "D       [0]     0"
    over_a_ln_p_two: "D       [0]     0"
    over_a_ln_p_three: "D       [0]     0"
    over_a_ln_p_four: "D       [0]     0"
    exon_boundaries: "S       [0]"
    display: "D       [0]     100"
    error: ": -h IS NOT A PARAMETER  OF t_coffee [FATAL/t_coffee Version_13.39.0.d675aed]"
  }
  output {
    File out_stdout = stdout()
  }
}