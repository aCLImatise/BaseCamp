version 1.0

task Cmsearch {
  input {
    Boolean? configure_cm_glocal
    String? set_space_size
    Boolean? devhelp
    String? direct_output_file
    String? save_multiple_alignment
    String? tbl_out
    Boolean? acc
    Boolean? no_ali
    Boolean? no_text_w
    String? text_w
    Boolean? verbose
    String? report_sequences_evalue
    String? report_sequences_threshold
    String? ince
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
    String? fz
    String? fmid
    Boolean? not_run_c
    Boolean? any_trunc
    Boolean? no_null_three
    String? mx_size
    String? smx_size
    Boolean? cy_k
    Boolean? acy_k
    String? wcx
    Boolean? top_only
    Boolean? bottom_only
    String? t_format
    String? cpu
    String cm_file
    String seq_db
  }
  command <<<
    cmsearch \
      ~{cm_file} \
      ~{seq_db} \
      ~{true="-g" false="" configure_cm_glocal} \
      ~{if defined(set_space_size) then ("-Z " +  '"' + set_space_size + '"') else ""} \
      ~{true="--devhelp" false="" devhelp} \
      ~{if defined(direct_output_file) then ("-o " +  '"' + direct_output_file + '"') else ""} \
      ~{if defined(save_multiple_alignment) then ("-A " +  '"' + save_multiple_alignment + '"') else ""} \
      ~{if defined(tbl_out) then ("--tblout " +  '"' + tbl_out + '"') else ""} \
      ~{true="--acc" false="" acc} \
      ~{true="--noali" false="" no_ali} \
      ~{true="--notextw" false="" no_text_w} \
      ~{if defined(text_w) then ("--textw " +  '"' + text_w + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(report_sequences_evalue) then ("-E " +  '"' + report_sequences_evalue + '"') else ""} \
      ~{if defined(report_sequences_threshold) then ("-T " +  '"' + report_sequences_threshold + '"') else ""} \
      ~{if defined(ince) then ("--incE " +  '"' + ince + '"') else ""} \
      ~{if defined(in_ct) then ("--incT " +  '"' + in_ct + '"') else ""} \
      ~{true="--cut_ga" false="" cut_ga} \
      ~{true="--cut_nc" false="" cut_nc} \
      ~{true="--cut_tc" false="" cut_tc} \
      ~{true="--max" false="" max} \
      ~{true="--nohmm" false="" no_hmm} \
      ~{true="--mid" false="" mid} \
      ~{true="--default" false="" default} \
      ~{true="--rfam" false="" rf_am} \
      ~{true="--hmmonly" false="" hmm_only} \
      ~{if defined(fz) then ("--FZ " +  '"' + fz + '"') else ""} \
      ~{if defined(fmid) then ("--Fmid " +  '"' + fmid + '"') else ""} \
      ~{true="--notrunc" false="" not_run_c} \
      ~{true="--anytrunc" false="" any_trunc} \
      ~{true="--nonull3" false="" no_null_three} \
      ~{if defined(mx_size) then ("--mxsize " +  '"' + mx_size + '"') else ""} \
      ~{if defined(smx_size) then ("--smxsize " +  '"' + smx_size + '"') else ""} \
      ~{true="--cyk" false="" cy_k} \
      ~{true="--acyk" false="" acy_k} \
      ~{if defined(wcx) then ("--wcx " +  '"' + wcx + '"') else ""} \
      ~{true="--toponly" false="" top_only} \
      ~{true="--bottomonly" false="" bottom_only} \
      ~{if defined(t_format) then ("--tformat " +  '"' + t_format + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""}
  >>>
  parameter_meta {
    configure_cm_glocal: ": configure CM for glocal alignment [default: local]"
    set_space_size: ": set search space size in *Mb* to <x> for E-value calculations  (x>0)"
    devhelp: ": show list of otherwise hidden developer/expert options"
    direct_output_file: ": direct output to file <f>, not stdout"
    save_multiple_alignment: ": save multiple alignment of all significant hits to file <s>"
    tbl_out: ": save parseable table of hits to file <s>"
    acc: ": prefer accessions over names in output"
    no_ali: ": don't output alignments, so output is smaller"
    no_text_w: ": unlimit ASCII text output line width"
    text_w: ": set max width of ASCII text output lines  [120]  (n>=120)"
    verbose: ": report extra information; mainly useful for debugging"
    report_sequences_evalue: ": report sequences <= this E-value threshold in output  [10.0]  (x>0)"
    report_sequences_threshold: ": report sequences >= this score threshold in output"
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
}