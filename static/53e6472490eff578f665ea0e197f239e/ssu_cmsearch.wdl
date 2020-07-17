version 1.0

task SsuCmsearch {
  input {
    String? direct_output_file
    Boolean? configure_cmhmm_glocal
    Boolean? append_posterior_probabilities
    Boolean? annotate_noncompensatory_bps
    Boolean? annotate_negative_bps
    String? set_database_size
    Boolean? top_only
    Boolean? bottom_only
    String? forecast
    String? in_format
    String? mx_size
    Boolean? devhelp
    Boolean? inside
    Boolean? cy_k
    Boolean? forward
    Boolean? viterbi
    String? use_cutoff_evalue
    String? use_bit_score
    Boolean? nc
    Boolean? ga
    Boolean? tc
    Boolean? no_qdb
    String? beta
    Boolean? h_banded
    String? tau
    Boolean? fil_no_hmm
    Boolean? fil_no_qdb
    String? fil_beta
    String? fil_t_qdb
    String? fil_t_hmm
    String? fil_e_qdb
    String? fil_e_hmm
    String? fil_s_hmm
    String? fil_smax_hmm
    String? fil_sm_in_hmm
    Boolean? fil_a_hmm
    String? hmm_w
    String? hmm_cw
    Boolean? no_align
    Boolean? aln_h_banded
    Boolean? aln_opt_acc
    String? cm_idx
    String? cm_name
    String? tab_file
    String? gc_file
    Boolean? rna
    Boolean? dna
    Boolean? options
    String cm_file
    String sequence_file
  }
  command <<<
    ssu-cmsearch \
      ~{cm_file} \
      ~{sequence_file} \
      ~{if defined(direct_output_file) then ("-o " +  '"' + direct_output_file + '"') else ""} \
      ~{true="-g" false="" configure_cmhmm_glocal} \
      ~{true="-p" false="" append_posterior_probabilities} \
      ~{true="-x" false="" annotate_noncompensatory_bps} \
      ~{true="-v" false="" annotate_negative_bps} \
      ~{if defined(set_database_size) then ("-Z " +  '"' + set_database_size + '"') else ""} \
      ~{true="--toponly" false="" top_only} \
      ~{true="--bottomonly" false="" bottom_only} \
      ~{if defined(forecast) then ("--forecast " +  '"' + forecast + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(mx_size) then ("--mxsize " +  '"' + mx_size + '"') else ""} \
      ~{true="--devhelp" false="" devhelp} \
      ~{true="--inside" false="" inside} \
      ~{true="--cyk" false="" cy_k} \
      ~{true="--forward" false="" forward} \
      ~{true="--viterbi" false="" viterbi} \
      ~{if defined(use_cutoff_evalue) then ("-E " +  '"' + use_cutoff_evalue + '"') else ""} \
      ~{if defined(use_bit_score) then ("-T " +  '"' + use_bit_score + '"') else ""} \
      ~{true="--nc" false="" nc} \
      ~{true="--ga" false="" ga} \
      ~{true="--tc" false="" tc} \
      ~{true="--no-qdb" false="" no_qdb} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""} \
      ~{true="--hbanded" false="" h_banded} \
      ~{if defined(tau) then ("--tau " +  '"' + tau + '"') else ""} \
      ~{true="--fil-no-hmm" false="" fil_no_hmm} \
      ~{true="--fil-no-qdb" false="" fil_no_qdb} \
      ~{if defined(fil_beta) then ("--fil-beta " +  '"' + fil_beta + '"') else ""} \
      ~{if defined(fil_t_qdb) then ("--fil-T-qdb " +  '"' + fil_t_qdb + '"') else ""} \
      ~{if defined(fil_t_hmm) then ("--fil-T-hmm " +  '"' + fil_t_hmm + '"') else ""} \
      ~{if defined(fil_e_qdb) then ("--fil-E-qdb " +  '"' + fil_e_qdb + '"') else ""} \
      ~{if defined(fil_e_hmm) then ("--fil-E-hmm " +  '"' + fil_e_hmm + '"') else ""} \
      ~{if defined(fil_s_hmm) then ("--fil-S-hmm " +  '"' + fil_s_hmm + '"') else ""} \
      ~{if defined(fil_smax_hmm) then ("--fil-Smax-hmm " +  '"' + fil_smax_hmm + '"') else ""} \
      ~{if defined(fil_sm_in_hmm) then ("--fil-Smin-hmm " +  '"' + fil_sm_in_hmm + '"') else ""} \
      ~{true="--fil-A-hmm" false="" fil_a_hmm} \
      ~{if defined(hmm_w) then ("--hmm-W " +  '"' + hmm_w + '"') else ""} \
      ~{if defined(hmm_cw) then ("--hmm-cW " +  '"' + hmm_cw + '"') else ""} \
      ~{true="--noalign" false="" no_align} \
      ~{true="--aln-hbanded" false="" aln_h_banded} \
      ~{true="--aln-optacc" false="" aln_opt_acc} \
      ~{if defined(cm_idx) then ("--cm-idx " +  '"' + cm_idx + '"') else ""} \
      ~{if defined(cm_name) then ("--cm-name " +  '"' + cm_name + '"') else ""} \
      ~{if defined(tab_file) then ("--tabfile " +  '"' + tab_file + '"') else ""} \
      ~{if defined(gc_file) then ("--gcfile " +  '"' + gc_file + '"') else ""} \
      ~{true="--rna" false="" rna} \
      ~{true="--dna" false="" dna} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    direct_output_file: ": direct output to file <f>, not stdout"
    configure_cmhmm_glocal: ": configure CM/HMM for glocal alignment [default: local]"
    append_posterior_probabilities: ": append posterior probabilities to hit alignments"
    annotate_noncompensatory_bps: ": annotate non-compensatory bps in output alignments with 'x'"
    annotate_negative_bps: ": annotate negative scoring non-canonical bps with 'v'"
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
    use_cutoff_evalue: ": use cutoff E-value of <x> for final round of search  [1.0]  (x>0.)"
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
}