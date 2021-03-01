version 1.0

task TCoffee {
  input {
    Boolean? full_log
    Int? gene_pred_score
    Boolean? run_name
    Boolean? mem_mode
    Boolean? extend_mode
    Boolean? seq_name_for_quadruple_t
    Boolean? compact
    Boolean? clean
    Boolean? template_file
    Boolean? template_mode
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
    Boolean? out_lib
    Boolean? out_lib_mode
    Boolean? out_seq_weight
    Boolean? seq_source
    Boolean? new_tree
    Boolean? tree
    Boolean? tree_mode
    Boolean? distance_matrix_mode
    Boolean? distance_matrix_sim_mode
    Boolean? outfile
    Boolean? s_aln_html
    Boolean? matrix
    Boolean? profile_mode
    Boolean? profile_comparison
    Boolean? dp_mode
    Boolean? sim_matrix
    Boolean? transform
    Boolean? out_order
    Boolean? in_order
    Boolean? seqno_s
    Boolean? case
    Boolean? ulimit
    Boolean? max_n_seq
    Boolean? maxlen
    Boolean? weight
    Boolean? seq_weight
    Boolean? method_evaluate_mode
    Boolean? color_mode
    Boolean? evaluate_mode
    Boolean? clean_evaluate_mode
    Boolean? psi_trim_mode
    Boolean? psi_trim_tree
    Boolean? pdb_blast_server
    Boolean? blast
    Boolean? blast_server
    Boolean? pdb_db
    Boolean? protein_db
    Boolean? method_log
    Boolean? struc_to_use
    Boolean? cache
    Boolean? align_pdb_param_file
    Boolean? align_pdb_has_ch_mode
    Boolean? external_aligner
    Boolean? msa_mode
    Boolean? et_mode
    Boolean? master
    Boolean? trim_file
    Boolean? seq_to_keep
    Boolean? multi_core
    Boolean? lib_list
    Boolean? tip
    Boolean? rna_lib
    Boolean? proxy
    Boolean? email
    Boolean? over_a_ln_param
    Boolean? over_a_ln_mode
    Boolean? over_a_ln_model
    Boolean? exon_boundaries
    Boolean? error
  }
  command <<<
    t_coffee \
      ~{if (full_log) then "-full_log" else ""} \
      ~{if defined(gene_pred_score) then ("-genepred_score " +  '"' + gene_pred_score + '"') else ""} \
      ~{if (run_name) then "-run_name" else ""} \
      ~{if (mem_mode) then "-mem_mode" else ""} \
      ~{if (extend_mode) then "-extend_mode" else ""} \
      ~{if (seq_name_for_quadruple_t) then "-seq_name_for_quadruplet" else ""} \
      ~{if (compact) then "-compact" else ""} \
      ~{if (clean) then "-clean" else ""} \
      ~{if (template_file) then "-template_file" else ""} \
      ~{if (template_mode) then "-template_mode" else ""} \
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
      ~{if (out_lib) then "-out_lib" else ""} \
      ~{if (out_lib_mode) then "-out_lib_mode" else ""} \
      ~{if (out_seq_weight) then "-outseqweight" else ""} \
      ~{if (seq_source) then "-seq_source" else ""} \
      ~{if (new_tree) then "-newtree" else ""} \
      ~{if (tree) then "-tree" else ""} \
      ~{if (tree_mode) then "-tree_mode" else ""} \
      ~{if (distance_matrix_mode) then "-distance_matrix_mode" else ""} \
      ~{if (distance_matrix_sim_mode) then "-distance_matrix_sim_mode" else ""} \
      ~{if (outfile) then "-outfile" else ""} \
      ~{if (s_aln_html) then "-output" else ""} \
      ~{if (matrix) then "-matrix" else ""} \
      ~{if (profile_mode) then "-profile_mode" else ""} \
      ~{if (profile_comparison) then "-profile_comparison" else ""} \
      ~{if (dp_mode) then "-dp_mode" else ""} \
      ~{if (sim_matrix) then "-sim_matrix" else ""} \
      ~{if (transform) then "-transform" else ""} \
      ~{if (out_order) then "-outorder" else ""} \
      ~{if (in_order) then "-inorder" else ""} \
      ~{if (seqno_s) then "-seqnos" else ""} \
      ~{if (case) then "-case" else ""} \
      ~{if (ulimit) then "-ulimit" else ""} \
      ~{if (max_n_seq) then "-maxnseq" else ""} \
      ~{if (maxlen) then "-maxlen" else ""} \
      ~{if (weight) then "-weight" else ""} \
      ~{if (seq_weight) then "-seq_weight" else ""} \
      ~{if (method_evaluate_mode) then "-method_evaluate_mode" else ""} \
      ~{if (color_mode) then "-color_mode" else ""} \
      ~{if (evaluate_mode) then "-evaluate_mode" else ""} \
      ~{if (clean_evaluate_mode) then "-clean_evaluate_mode" else ""} \
      ~{if (psi_trim_mode) then "-psitrim_mode" else ""} \
      ~{if (psi_trim_tree) then "-psitrim_tree" else ""} \
      ~{if (pdb_blast_server) then "-pdb_blast_server" else ""} \
      ~{if (blast) then "-blast" else ""} \
      ~{if (blast_server) then "-blast_server" else ""} \
      ~{if (pdb_db) then "-pdb_db" else ""} \
      ~{if (protein_db) then "-protein_db" else ""} \
      ~{if (method_log) then "-method_log" else ""} \
      ~{if (struc_to_use) then "-struc_to_use" else ""} \
      ~{if (cache) then "-cache" else ""} \
      ~{if (align_pdb_param_file) then "-align_pdb_param_file" else ""} \
      ~{if (align_pdb_has_ch_mode) then "-align_pdb_hasch_mode" else ""} \
      ~{if (external_aligner) then "-external_aligner" else ""} \
      ~{if (msa_mode) then "-msa_mode" else ""} \
      ~{if (et_mode) then "-et_mode" else ""} \
      ~{if (master) then "-master" else ""} \
      ~{if (trim_file) then "-trimfile" else ""} \
      ~{if (seq_to_keep) then "-seq_to_keep" else ""} \
      ~{if (multi_core) then "-multi_core" else ""} \
      ~{if (lib_list) then "-lib_list" else ""} \
      ~{if (tip) then "-tip" else ""} \
      ~{if (rna_lib) then "-rna_lib" else ""} \
      ~{if (proxy) then "-proxy" else ""} \
      ~{if (email) then "-email" else ""} \
      ~{if (over_a_ln_param) then "-overaln_param" else ""} \
      ~{if (over_a_ln_mode) then "-overaln_mode" else ""} \
      ~{if (over_a_ln_model) then "-overaln_model" else ""} \
      ~{if (exon_boundaries) then "-exon_boundaries" else ""} \
      ~{if (error) then "--ERROR" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/t-coffee:13.45.0.4846264--he1b5a44_3"
  }
  parameter_meta {
    full_log: "S       [0]"
    gene_pred_score: "[0]     nsd"
    run_name: "S       [0]"
    mem_mode: "S       [0]     mem"
    extend_mode: "S       [0]     very_fast_triplet"
    seq_name_for_quadruple_t: "S       [0]     all"
    compact: "S       [0]     default"
    clean: "S       [0]     no"
    template_file: "S       [0]"
    template_mode: "S       [0]"
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
    out_lib: "W_F     [0]     no"
    out_lib_mode: "S       [0]     primary"
    out_seq_weight: "W_F     [0]     no"
    seq_source: "S       [0]     ANY"
    new_tree: "W_F     [0]     default"
    tree: "W_F     [0]     NO"
    tree_mode: "S       [0]     nj"
    distance_matrix_mode: "S       [0]     ktup"
    distance_matrix_sim_mode: "S       [0]     idmat_sim1"
    outfile: "W_F     [0]     default"
    s_aln_html: "S       [0]     aln     html"
    matrix: "S       [0]     default"
    profile_mode: "S       [0]     cw_profile_profile"
    profile_comparison: "S       [0]     profile"
    dp_mode: "S       [0]     linked_pair_wise"
    sim_matrix: "S       [0]     vasiliky"
    transform: "S       [0]"
    out_order: "S       [0]     input"
    in_order: "S       [0]     aligned"
    seqno_s: "S       [0]     off"
    case: "S       [0]     keep"
    ulimit: "D       [0]     -1"
    max_n_seq: "D       [0]     -1"
    maxlen: "D       [0]     -1"
    weight: "S       [0]     default"
    seq_weight: "S       [0]     no"
    method_evaluate_mode: "S       [0]     default"
    color_mode: "S       [0]     new"
    evaluate_mode: "S       [0]     triplet"
    clean_evaluate_mode: "S       [0]     t_coffee_fast"
    psi_trim_mode: "S       [0]     regtrim"
    psi_trim_tree: "S       [0]     codnd"
    pdb_blast_server: "W_F     [0]     EBI"
    blast: "W_F     [0]"
    blast_server: "W_F     [0]     EBI"
    pdb_db: "W_F     [0]     pdb"
    protein_db: "W_F     [0]     uniref50"
    method_log: "W_F     [0]     no"
    struc_to_use: "S       [0]"
    cache: "W_F     [0]     use"
    align_pdb_param_file: "W_F     [0]     no"
    align_pdb_has_ch_mode: "W_F     [0]     hasch_ca_trace_bubble"
    external_aligner: "S       [0]     NO"
    msa_mode: "S       [0]     tree"
    et_mode: "S       [0]     et"
    master: "S       [0]     no"
    trim_file: "S       [0]     default"
    seq_to_keep: "S       [0]"
    multi_core: "S       [0]     templates_jobs_relax_msa_evaluate"
    lib_list: "S       [0]"
    tip: "S       [0]     none"
    rna_lib: "S       [0]"
    proxy: "S       [0]     unset"
    email: "S       [0]"
    over_a_ln_param: "S       [0]"
    over_a_ln_mode: "S       [0]"
    over_a_ln_model: "S       [0]"
    exon_boundaries: "S       [0]"
    error: ": -h IS NOT A PARAMETER  OF /usr/local/share/t-coffee-13.45.0.4846264-3/bin/t_coffee [FATAL//usr/local/share/t-coffee-13.45.0.4846264-3/bin/t_coffee Version_13.45.0.4846264]"
  }
  output {
    File out_stdout = stdout()
  }
}