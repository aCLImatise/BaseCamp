version 1.0

task Ssucmsearch {
  input {
    File? direct_output_file
    Boolean? configure_cmhmm_glocal
    Boolean? append_posterior_probabilities
    Boolean? annotate_bps_output
    Boolean? annotate_negative_scoring
    Int? set_database_size
    Boolean? top_only
    Boolean? bottom_only
    String? forecast
    File? in_format
    Int? mx_size
    Boolean? devhelp
    Boolean? inside
    Boolean? cy_k
    Boolean? forward
    Boolean? viterbi
    Float? use_evalue_x
    Float? use_bit_score
    Boolean? nc
    Boolean? ga
    Boolean? tc
    Boolean? no_qdb
    Float? beta
    Boolean? h_banded
    Float? tau
    Boolean? fil_no_hmm
    Boolean? fil_no_qdb
    Float? fil_beta
    Float? fil_t_qdb
    Float? fil_t_hmm
    String? fil_e_qdb
    String? fil_e_hmm
    String? fil_s_hmm
    Float? fil_smax_hmm
    Float? fil_sm_in_hmm
    Boolean? fil_a_hmm
    Int? hmm_w
    Int? hmm_cw
    Boolean? no_align
    Boolean? aln_h_banded
    Boolean? aln_opt_acc
    Int? cm_idx
    File? cm_name
    File? tab_file
    File? gc_file
    Boolean? rna
    Boolean? dna
    Boolean? options
    String cm_file
    File sequence_file
  }
  command <<<
    ssu_cmsearch \
      ~{cm_file} \
      ~{sequence_file} \
      ~{if defined(direct_output_file) then ("-o " +  '"' + direct_output_file + '"') else ""} \
      ~{if (configure_cmhmm_glocal) then "-g" else ""} \
      ~{if (append_posterior_probabilities) then "-p" else ""} \
      ~{if (annotate_bps_output) then "-x" else ""} \
      ~{if (annotate_negative_scoring) then "-v" else ""} \
      ~{if defined(set_database_size) then ("-Z " +  '"' + set_database_size + '"') else ""} \
      ~{if (top_only) then "--toponly" else ""} \
      ~{if (bottom_only) then "--bottomonly" else ""} \
      ~{if defined(forecast) then ("--forecast " +  '"' + forecast + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(mx_size) then ("--mxsize " +  '"' + mx_size + '"') else ""} \
      ~{if (devhelp) then "--devhelp" else ""} \
      ~{if (inside) then "--inside" else ""} \
      ~{if (cy_k) then "--cyk" else ""} \
      ~{if (forward) then "--forward" else ""} \
      ~{if (viterbi) then "--viterbi" else ""} \
      ~{if defined(use_evalue_x) then ("-E " +  '"' + use_evalue_x + '"') else ""} \
      ~{if defined(use_bit_score) then ("-T " +  '"' + use_bit_score + '"') else ""} \
      ~{if (nc) then "--nc" else ""} \
      ~{if (ga) then "--ga" else ""} \
      ~{if (tc) then "--tc" else ""} \
      ~{if (no_qdb) then "--no-qdb" else ""} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""} \
      ~{if (h_banded) then "--hbanded" else ""} \
      ~{if defined(tau) then ("--tau " +  '"' + tau + '"') else ""} \
      ~{if (fil_no_hmm) then "--fil-no-hmm" else ""} \
      ~{if (fil_no_qdb) then "--fil-no-qdb" else ""} \
      ~{if defined(fil_beta) then ("--fil-beta " +  '"' + fil_beta + '"') else ""} \
      ~{if defined(fil_t_qdb) then ("--fil-T-qdb " +  '"' + fil_t_qdb + '"') else ""} \
      ~{if defined(fil_t_hmm) then ("--fil-T-hmm " +  '"' + fil_t_hmm + '"') else ""} \
      ~{if defined(fil_e_qdb) then ("--fil-E-qdb " +  '"' + fil_e_qdb + '"') else ""} \
      ~{if defined(fil_e_hmm) then ("--fil-E-hmm " +  '"' + fil_e_hmm + '"') else ""} \
      ~{if defined(fil_s_hmm) then ("--fil-S-hmm " +  '"' + fil_s_hmm + '"') else ""} \
      ~{if defined(fil_smax_hmm) then ("--fil-Smax-hmm " +  '"' + fil_smax_hmm + '"') else ""} \
      ~{if defined(fil_sm_in_hmm) then ("--fil-Smin-hmm " +  '"' + fil_sm_in_hmm + '"') else ""} \
      ~{if (fil_a_hmm) then "--fil-A-hmm" else ""} \
      ~{if defined(hmm_w) then ("--hmm-W " +  '"' + hmm_w + '"') else ""} \
      ~{if defined(hmm_cw) then ("--hmm-cW " +  '"' + hmm_cw + '"') else ""} \
      ~{if (no_align) then "--noalign" else ""} \
      ~{if (aln_h_banded) then "--aln-hbanded" else ""} \
      ~{if (aln_opt_acc) then "--aln-optacc" else ""} \
      ~{if defined(cm_idx) then ("--cm-idx " +  '"' + cm_idx + '"') else ""} \
      ~{if defined(cm_name) then ("--cm-name " +  '"' + cm_name + '"') else ""} \
      ~{if defined(tab_file) then ("--tabfile " +  '"' + tab_file + '"') else ""} \
      ~{if defined(gc_file) then ("--gcfile " +  '"' + gc_file + '"') else ""} \
      ~{if (rna) then "--rna" else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    direct_output_file: ": direct output to file <f>, not stdout"
    configure_cmhmm_glocal: ": configure CM/HMM for glocal alignment [default: local]"
    append_posterior_probabilities: ": append posterior probabilities to hit alignments"
    annotate_bps_output: ": annotate non-compensatory bps in output alignments with 'x'"
    annotate_negative_scoring: ": annotate negative scoring non-canonical bps with 'v'"
    set_database_size: ": set Z (database size in *Mb*) to <x> for E-value calculations"
    top_only: ": only search the top strand"
    bottom_only: ": only search the bottom strand"
    forecast: ": don't do search, forecast running time with <n> processors"
    in_format: ": specify the input file is in format <x>, not FASTA"
    mx_size: ": set maximum allowable HMM banded DP matrix size to <x> Mb"
    devhelp: ": show list of undocumented developer options"
    inside: ": use scanning CM Inside algorithm  [default]"
    cy_k: ": use scanning CM CYK algorithm"
    forward: ": use scanning HMM Forward algorithm"
    viterbi: ": use scanning HMM Viterbi algorithm"
    use_evalue_x: ": use cutoff E-value of <x> for final round of search  [1.0]  (x>0.)"
    use_bit_score: ": use cutoff bit score of <x> for final round of search  [0.0]"
    nc: ": use CM Rfam NC noise cutoff as cutoff bit score"
    ga: ": use CM Rfam GA gathering threshold as cutoff bit score"
    tc: ": use CM Rfam TC trusted cutoff as cutoff bit score"
    no_qdb: ": do not use QDBs in final round of searching"
    beta: ": set tail loss prob for QDB calculation to <x>  [1e-15]  (0<x<1)"
    h_banded: ": calculate and use HMM bands in final round of CM search"
    tau: ": set tail loss prob for --hbanded to <x>  [1e-7]  (0<x<1)"
    fil_no_hmm: ": do not filter with HMM Forward algorithm"
    fil_no_qdb: ": do not filter with CM banded CYK"
    fil_beta: ": set tail loss prob for QDB filter to <x>  [1e-10]  (x>0)"
    fil_t_qdb: ": set QDB CM filter cutoff bit score as <x>  [0.0]"
    fil_t_hmm: ": set HMM filter cutoff bit score as <x>  [3.0]"
    fil_e_qdb: ": set QDB CM filter cutoff E-value as <x>"
    fil_e_hmm: ": set HMM filter cutoff E-value as <x>"
    fil_s_hmm: ": set HMM filter predicted surv fract as <x>"
    fil_smax_hmm: ": set maximum HMM survival fraction as <x>  [0.5]"
    fil_sm_in_hmm: ": set minimum HMM survival fraction as <x>  [0.02]"
    fil_a_hmm: ": always filter w/HMM w/surv fract <= <x> from --fil-Smax-hmm"
    hmm_w: ": set HMM window size as <n>  (n>1)"
    hmm_cw: ": set HMM window size as <x> * consensus length  (x>0.01)"
    no_align: ": find start/stop/score only; don't do alignments"
    aln_h_banded: ": use HMM bands to align hits"
    aln_opt_acc: ": align hits with the optimal accuracy algorithm, not CYK"
    cm_idx: ": only search with CM number <n>    in the CM file  (n>0)"
    cm_name: ": only search with the CM named <s> in the CM file"
    tab_file: ": save hits in tabular format to file <f>"
    gc_file: ": save GC content stats of target sequence file to <f>"
    rna: ": output hit alignments as RNA sequence data  [default]"
    dna: ": output hit alignments as DNA (not RNA) sequence data"
    options: ""
    cm_file: ""
    sequence_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_direct_output_file = "${in_direct_output_file}"
  }
}