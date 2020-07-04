version 1.0

task SsuEslAlimask {
  input {
    String? output_final_alignment
    Boolean? quiet_wo_print
    Boolean? small
    String? in_format
    String? out_format
    String? f_mask_rf
    String? f_mask_all
    Boolean? amino
    Boolean? dna
    Boolean? rna
    Boolean? t_rf
    Boolean? t_r_mins
    String? gap_thresh
    String? g_mask_rf
    String? g_mask_all
    String? pfr_act
    String? p_thresh
    String? p_avg
    String? pp_cons
    Boolean? p_all_gap_ok
    String? pm_ask_rf
    String? pm_ask_all
    Boolean? keep_ins
  }
  command <<<
    ssu-esl-alimask \
      ~{if defined(output_final_alignment) then ("-o " +  '"' + output_final_alignment + '"') else ""} \
      ~{true="-q" false="" quiet_wo_print} \
      ~{true="--small" false="" small} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{if defined(f_mask_rf) then ("--fmask-rf " +  '"' + f_mask_rf + '"') else ""} \
      ~{if defined(f_mask_all) then ("--fmask-all " +  '"' + f_mask_all + '"') else ""} \
      ~{true="--amino" false="" amino} \
      ~{true="--dna" false="" dna} \
      ~{true="--rna" false="" rna} \
      ~{true="--t-rf" false="" t_rf} \
      ~{true="--t-rmins" false="" t_r_mins} \
      ~{if defined(gap_thresh) then ("--gapthresh " +  '"' + gap_thresh + '"') else ""} \
      ~{if defined(g_mask_rf) then ("--gmask-rf " +  '"' + g_mask_rf + '"') else ""} \
      ~{if defined(g_mask_all) then ("--gmask-all " +  '"' + g_mask_all + '"') else ""} \
      ~{if defined(pfr_act) then ("--pfract " +  '"' + pfr_act + '"') else ""} \
      ~{if defined(p_thresh) then ("--pthresh " +  '"' + p_thresh + '"') else ""} \
      ~{if defined(p_avg) then ("--pavg " +  '"' + p_avg + '"') else ""} \
      ~{if defined(pp_cons) then ("--ppcons " +  '"' + pp_cons + '"') else ""} \
      ~{true="--pallgapok" false="" p_all_gap_ok} \
      ~{if defined(pm_ask_rf) then ("--pmask-rf " +  '"' + pm_ask_rf + '"') else ""} \
      ~{if defined(pm_ask_all) then ("--pmask-all " +  '"' + pm_ask_all + '"') else ""} \
      ~{true="--keepins" false="" keep_ins}
  >>>
  parameter_meta {
    output_final_alignment: ": output the final alignment to file <f>, not stdout"
    quiet_wo_print: ": be quiet; w/-o, don't print mask info to stdout"
    small: ": use minimal RAM (RAM usage will be independent of aln size)"
    in_format: ": specify that input file is in format <s>"
    out_format: ": specify that output aln be format <s>"
    f_mask_rf: ": output final mask of non-gap RF len to file <f>"
    f_mask_all: ": output final mask of full aln len to file <f>"
    amino: ": <msafile> contains protein alignments"
    dna: ": <msafile> contains DNA alignments"
    rna: ": <msafile> contains RNA alignments"
    t_rf: ": <coords> string corresponds to non-gap RF positions"
    t_r_mins: ": remove all gap RF positions within <coords>"
    gap_thresh: ": only keep columns with <= <x> fraction of gaps in them  [0.5]"
    g_mask_rf: ": output gap-based 0/1 mask of non-gap RF len to file <f>"
    g_mask_all: ": output gap-based 0/1 mask of   full aln len to file <f>"
    pfr_act: ": keep cols w/<x> fraction of seqs w/PP >= --pthresh  [0.95]"
    p_thresh: ": set post prob threshold for --pfract as <x>  [0.95]"
    p_avg: ": keep cols with average post prob >= <x>"
    pp_cons: ": keep cols with PP_cons value >= <x>"
    p_all_gap_ok: ": keep 100% gap columns (by default, they're removed w/-p)"
    pm_ask_rf: ": output PP-based 0/1 mask of non-gap RF len to file <f>"
    pm_ask_all: ": output PP-based 0/1 mask of   full aln len to file <f>"
    keep_ins: ": if msa has RF annotation, allow gap-RF columns to possibly survive"
  }
}