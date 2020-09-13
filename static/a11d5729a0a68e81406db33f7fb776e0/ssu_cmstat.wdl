version 1.0

task Ssucmstat {
  input {
    Boolean? configure_cm_glocal
    Boolean? only_print_model
    Int? set_database_size
    Boolean? all
    Boolean? le
    Boolean? ge
    Float? beta
    File? qdb_file
    Boolean? lfi
    Boolean? gfi
    Boolean? lfc
    Boolean? gfc
    Int? print_cmsearch_e
    String? cmsearch_cmsearch_bit
    Boolean? nc
    Boolean? ga
    Boolean? tc
    File? seq_file
    Boolean? top_only
    Boolean? search
    Int? wsearch_set_seed
    Int? cml
    Int? hmm_l
    String? e_file
    String? b_file
    String? s_file
    String? x_file
    String? a_file
    Boolean? bits
    Boolean? options
    String cm_file
  }
  command <<<
    ssu_cmstat \
      ~{cm_file} \
      ~{if (configure_cm_glocal) then "-g" else ""} \
      ~{if (only_print_model) then "-m" else ""} \
      ~{if defined(set_database_size) then ("-Z " +  '"' + set_database_size + '"') else ""} \
      ~{if (all) then "--all" else ""} \
      ~{if (le) then "--le" else ""} \
      ~{if (ge) then "--ge" else ""} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""} \
      ~{if defined(qdb_file) then ("--qdbfile " +  '"' + qdb_file + '"') else ""} \
      ~{if (lfi) then "--lfi" else ""} \
      ~{if (gfi) then "--gfi" else ""} \
      ~{if (lfc) then "--lfc" else ""} \
      ~{if (gfc) then "--gfc" else ""} \
      ~{if defined(print_cmsearch_e) then ("-E " +  '"' + print_cmsearch_e + '"') else ""} \
      ~{if defined(cmsearch_cmsearch_bit) then ("-T " +  '"' + cmsearch_cmsearch_bit + '"') else ""} \
      ~{if (nc) then "--nc" else ""} \
      ~{if (ga) then "--ga" else ""} \
      ~{if (tc) then "--tc" else ""} \
      ~{if defined(seq_file) then ("--seqfile " +  '"' + seq_file + '"') else ""} \
      ~{if (top_only) then "--toponly" else ""} \
      ~{if (search) then "--search" else ""} \
      ~{if defined(wsearch_set_seed) then ("-s " +  '"' + wsearch_set_seed + '"') else ""} \
      ~{if defined(cml) then ("--cmL " +  '"' + cml + '"') else ""} \
      ~{if defined(hmm_l) then ("--hmmL " +  '"' + hmm_l + '"') else ""} \
      ~{if defined(e_file) then ("--efile " +  '"' + e_file + '"') else ""} \
      ~{if defined(b_file) then ("--bfile " +  '"' + b_file + '"') else ""} \
      ~{if defined(s_file) then ("--sfile " +  '"' + s_file + '"') else ""} \
      ~{if defined(x_file) then ("--xfile " +  '"' + x_file + '"') else ""} \
      ~{if defined(a_file) then ("--afile " +  '"' + a_file + '"') else ""} \
      ~{if (bits) then "--bits" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    configure_cm_glocal: ": configure CM for glocal alignment [default: local]"
    only_print_model: ": only print one line summary of model statistics  [default]"
    set_database_size: ": set Z (database size in *Mb*) to <x> for E-value calculations"
    all: ": print model, E-value and filter thresholds stats"
    le: ": only print one line summary of  local E-value statistics"
    ge: ": only print one line summary of glocal E-value statistics"
    beta: ": set tail loss prob for QDB stats to <x>  [1E-7]  (0<x<1)"
    qdb_file: ": save query-dependent bands (QDBs) for each state to file <f>"
    lfi: ": only print summary of  local Inside filter threshold stats"
    gfi: ": only print summary of glocal Inside filter threshold stats"
    lfc: ": only print summary of  local CYK    filter threshold stats"
    gfc: ": only print summary of glocal CYK    filter threshold stats"
    print_cmsearch_e: ": print HMM filter stats for cmsearch E cutoff <x>  (x>0)"
    cmsearch_cmsearch_bit: ": print HMM filter stats for cmsearch bit cutoff <x>"
    nc: ": print HMM filter stats for Rfam NC cutoff"
    ga: ": print HMM filter stats for Rfam GA cutoff"
    tc: ": print HMM filter stats for Rfam TC cutoff"
    seq_file: ": compute E-value cutoffs for sequence file <f>"
    top_only: ": with --seqfile, only consider top-strand"
    search: ": do search timing experiments"
    wsearch_set_seed: ": w/--search, set RNG seed to <n> (if 0: one-time arbitrary seed)"
    cml: ": length of sequences for CM search stats"
    hmm_l: ": length of sequences for CP9 HMM search stats"
    e_file: ": output HMM filter E-val cutoff vs CM E-val cutoff plots to <f>"
    b_file: ": output HMM filter bit sc cutoff vs CM bit sc cutoff plots to <f>"
    s_file: ": output predicted survival fraction vs CM cutoff plots to <f>"
    x_file: ": output predicted xhmm (calcs * HMM) vs CM cutoff plots to <f>"
    a_file: ": output predicted acceleration vs CM cutoff plots to <f>"
    bits: ": with --{s,x,a}file, plot CM bit score cutoffs not E-values"
    options: ""
    cm_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}