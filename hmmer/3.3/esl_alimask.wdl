version 1.0

task Eslalimask {
  input {
    String? can_used_combination
    File? output_final_alignment
    Boolean? quiet_print_info
    Boolean? small
    File? in_format
    String? out_format
    File? f_mask_rf
    File? f_mask_all
    Boolean? amino
    Boolean? dna
    Boolean? rna
    Boolean? t_rf
    Boolean? t_r_mins
    Float? gap_thresh
    File? g_mask_rf
    File? g_mask_all
    Float? pfr_act
    Float? p_thresh
    String? p_avg
    String? pp_cons
    Boolean? p_all_gap_ok
    File? pm_ask_rf
    File? pm_ask_all
    Boolean? keep_ins
    File? rf_is_mask
    File? t
  }
  command <<<
    esl_alimask \
      ~{if defined(can_used_combination) then ("-p " +  '"' + can_used_combination + '"') else ""} \
      ~{if defined(output_final_alignment) then ("-o " +  '"' + output_final_alignment + '"') else ""} \
      ~{if (quiet_print_info) then "-q" else ""} \
      ~{if (small) then "--small" else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{if defined(f_mask_rf) then ("--fmask-rf " +  '"' + f_mask_rf + '"') else ""} \
      ~{if defined(f_mask_all) then ("--fmask-all " +  '"' + f_mask_all + '"') else ""} \
      ~{if (amino) then "--amino" else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (rna) then "--rna" else ""} \
      ~{if (t_rf) then "--t-rf" else ""} \
      ~{if (t_r_mins) then "--t-rmins" else ""} \
      ~{if defined(gap_thresh) then ("--gapthresh " +  '"' + gap_thresh + '"') else ""} \
      ~{if defined(g_mask_rf) then ("--gmask-rf " +  '"' + g_mask_rf + '"') else ""} \
      ~{if defined(g_mask_all) then ("--gmask-all " +  '"' + g_mask_all + '"') else ""} \
      ~{if defined(pfr_act) then ("--pfract " +  '"' + pfr_act + '"') else ""} \
      ~{if defined(p_thresh) then ("--pthresh " +  '"' + p_thresh + '"') else ""} \
      ~{if defined(p_avg) then ("--pavg " +  '"' + p_avg + '"') else ""} \
      ~{if defined(pp_cons) then ("--ppcons " +  '"' + pp_cons + '"') else ""} \
      ~{if (p_all_gap_ok) then "--pallgapok" else ""} \
      ~{if defined(pm_ask_rf) then ("--pmask-rf " +  '"' + pm_ask_rf + '"') else ""} \
      ~{if defined(pm_ask_all) then ("--pmask-all " +  '"' + pm_ask_all + '"') else ""} \
      ~{if (keep_ins) then "--keepins" else ""} \
      ~{if defined(rf_is_mask) then ("--rf-is-mask " +  '"' + rf_is_mask + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    can_used_combination: ", which can be used in combination with each other."
    output_final_alignment: ": output the final alignment to file <f>, not stdout"
    quiet_print_info: ": be quiet; w/-o, don't print mask info to stdout"
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
    rf_is_mask: ""
    t: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_final_alignment = "${in_output_final_alignment}"
    File out_f_mask_rf = "${in_f_mask_rf}"
    File out_f_mask_all = "${in_f_mask_all}"
    File out_g_mask_rf = "${in_g_mask_rf}"
    File out_g_mask_all = "${in_g_mask_all}"
    File out_pm_ask_rf = "${in_pm_ask_rf}"
    File out_pm_ask_all = "${in_pm_ask_all}"
  }
}