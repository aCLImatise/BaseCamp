version 1.0

task Cmsearch {
  input {
    Boolean? configure_cm_glocal
    Int? set_search_size
    Boolean? devhelp
    File? direct_output_file
    File? save_multiple_alignment
    File? tbl_out
    Boolean? acc
    Boolean? no_ali
    Boolean? no_text_w
    Int? text_w
    Boolean? verbose
    Float? report_sequences_threshold
    String? report_sequences_score
    Float? ince
    String? in_ct
    Boolean? cut_ga
    Boolean? cut_nc
    Boolean? cut_tc
    Boolean? max
    Boolean? no_hmm
    Boolean? mid
    Boolean? default
    Boolean? rf_am
    Boolean? hmm_only
    Int? fz
    Float? fmid
    Boolean? not_run_c
    Boolean? any_trunc
    Boolean? no_null_three
    Int? mx_size
    Int? smx_size
    Boolean? cy_k
    Boolean? acy_k
    Int? wcx
    Boolean? top_only
    Boolean? bottom_only
    String? t_format
    Int? cpu
    String cm_file
    String seq_db
  }
  command <<<
    cmsearch \
      ~{cm_file} \
      ~{seq_db} \
      ~{if (configure_cm_glocal) then "-g" else ""} \
      ~{if defined(set_search_size) then ("-Z " +  '"' + set_search_size + '"') else ""} \
      ~{if (devhelp) then "--devhelp" else ""} \
      ~{if defined(direct_output_file) then ("-o " +  '"' + direct_output_file + '"') else ""} \
      ~{if defined(save_multiple_alignment) then ("-A " +  '"' + save_multiple_alignment + '"') else ""} \
      ~{if defined(tbl_out) then ("--tblout " +  '"' + tbl_out + '"') else ""} \
      ~{if (acc) then "--acc" else ""} \
      ~{if (no_ali) then "--noali" else ""} \
      ~{if (no_text_w) then "--notextw" else ""} \
      ~{if defined(text_w) then ("--textw " +  '"' + text_w + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(report_sequences_threshold) then ("-E " +  '"' + report_sequences_threshold + '"') else ""} \
      ~{if defined(report_sequences_score) then ("-T " +  '"' + report_sequences_score + '"') else ""} \
      ~{if defined(ince) then ("--incE " +  '"' + ince + '"') else ""} \
      ~{if defined(in_ct) then ("--incT " +  '"' + in_ct + '"') else ""} \
      ~{if (cut_ga) then "--cut_ga" else ""} \
      ~{if (cut_nc) then "--cut_nc" else ""} \
      ~{if (cut_tc) then "--cut_tc" else ""} \
      ~{if (max) then "--max" else ""} \
      ~{if (no_hmm) then "--nohmm" else ""} \
      ~{if (mid) then "--mid" else ""} \
      ~{if (default) then "--default" else ""} \
      ~{if (rf_am) then "--rfam" else ""} \
      ~{if (hmm_only) then "--hmmonly" else ""} \
      ~{if defined(fz) then ("--FZ " +  '"' + fz + '"') else ""} \
      ~{if defined(fmid) then ("--Fmid " +  '"' + fmid + '"') else ""} \
      ~{if (not_run_c) then "--notrunc" else ""} \
      ~{if (any_trunc) then "--anytrunc" else ""} \
      ~{if (no_null_three) then "--nonull3" else ""} \
      ~{if defined(mx_size) then ("--mxsize " +  '"' + mx_size + '"') else ""} \
      ~{if defined(smx_size) then ("--smxsize " +  '"' + smx_size + '"') else ""} \
      ~{if (cy_k) then "--cyk" else ""} \
      ~{if (acy_k) then "--acyk" else ""} \
      ~{if defined(wcx) then ("--wcx " +  '"' + wcx + '"') else ""} \
      ~{if (top_only) then "--toponly" else ""} \
      ~{if (bottom_only) then "--bottomonly" else ""} \
      ~{if defined(t_format) then ("--tformat " +  '"' + t_format + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/infernal:1.1.3--h516909a_0"
  }
  parameter_meta {
    configure_cm_glocal: ": configure CM for glocal alignment [default: local]"
    set_search_size: ": set search space size in *Mb* to <x> for E-value calculations  (x>0)"
    devhelp: ": show list of otherwise hidden developer/expert options"
    direct_output_file: ": direct output to file <f>, not stdout"
    save_multiple_alignment: ": save multiple alignment of all significant hits to file <s>"
    tbl_out: ": save parseable table of hits to file <s>"
    acc: ": prefer accessions over names in output"
    no_ali: ": don't output alignments, so output is smaller"
    no_text_w: ": unlimit ASCII text output line width"
    text_w: ": set max width of ASCII text output lines  [120]  (n>=120)"
    verbose: ": report extra information; mainly useful for debugging"
    report_sequences_threshold: ": report sequences <= this E-value threshold in output  [10.0]  (x>0)"
    report_sequences_score: ": report sequences >= this score threshold in output"
    ince: ": consider sequences <= this E-value threshold as significant  [0.01]"
    in_ct: ": consider sequences >= this score threshold as significant"
    cut_ga: ": use CM's GA gathering cutoffs as reporting thresholds"
    cut_nc: ": use CM's NC noise cutoffs as reporting thresholds"
    cut_tc: ": use CM's TC trusted cutoffs as reporting thresholds"
    max: ": turn all heuristic filters off (slow)"
    no_hmm: ": skip all HMM filter stages, use only CM (slow)"
    mid: ": skip first two HMM filter stages (SSV & Vit)"
    default: ": default: run search space size-dependent pipeline  [default]"
    rf_am: ": set heuristic filters at Rfam-level (fast)"
    hmm_only: ": use HMM only, don't use a CM at all"
    fz: ": set filters to defaults used for a search space of size <x> Mb"
    fmid: ": with --mid, set P-value threshold for HMM stages to <x>  [0.02]"
    not_run_c: ": do not allow truncated hits at sequence termini"
    any_trunc: ": allow full and truncated hits anywhere within sequences"
    no_null_three: ": turn off the NULL3 post hoc additional null model"
    mx_size: ": set max allowed alnment mx size to <x> Mb [df: autodetermined]"
    smx_size: ": set max allowed size of search DP matrices to <x> Mb  [128.]"
    cy_k: ": use scanning CM CYK algorithm, not Inside in final stage"
    acy_k: ": align hits with CYK, not optimal accuracy"
    wcx: ": set W (expected max hit len) as <x> * cm->clen (model len)"
    top_only: ": only search the top strand"
    bottom_only: ": only search the bottom strand"
    t_format: ": assert target <seqdb> is in format <s>: no autodetection"
    cpu: ": number of parallel CPU workers to use for multithreads"
    cm_file: ""
    seq_db: ""
  }
  output {
    File out_stdout = stdout()
    File out_direct_output_file = "${in_direct_output_file}"
  }
}