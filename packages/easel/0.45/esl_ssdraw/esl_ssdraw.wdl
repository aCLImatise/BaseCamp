version 1.0

task Eslssdraw {
  input {
    Boolean? draw_default_set
    Int? mask
    Boolean? small
    Boolean? cons
    Boolean? info
    Boolean? mut_info
    Boolean? ifreq
    Boolean? i_avg_len
    Boolean? d_all
    Boolean? prob
    Boolean? span
    Boolean? rf
    Boolean? dint
    File? tab_file
    Boolean? indi
    Boolean? force_windi_draw
    Boolean? no_leg
    Boolean? no_head
    Boolean? no_foot
    Boolean? mask_col
    Int? mask_diff
    Boolean? no_pp
    Boolean? no_bp
    Boolean? no_ol
    Boolean? no_nt_pp
    Boolean? no_cnt
    String? c_thresh
    Boolean? cam_big
    String? a_thresh
    Boolean? mask_u
    Boolean? mask_x
    Boolean? mask_a
    File? d_file
    File? e_file
    File? i_file
  }
  command <<<
    esl_ssdraw \
      ~{if (draw_default_set) then "-d" else ""} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if (small) then "--small" else ""} \
      ~{if (cons) then "--cons" else ""} \
      ~{if (info) then "--info" else ""} \
      ~{if (mut_info) then "--mutinfo" else ""} \
      ~{if (ifreq) then "--ifreq" else ""} \
      ~{if (i_avg_len) then "--iavglen" else ""} \
      ~{if (d_all) then "--dall" else ""} \
      ~{if (prob) then "--prob" else ""} \
      ~{if (span) then "--span" else ""} \
      ~{if (rf) then "--rf" else ""} \
      ~{if (dint) then "--dint" else ""} \
      ~{if defined(tab_file) then ("--tabfile " +  '"' + tab_file + '"') else ""} \
      ~{if (indi) then "--indi" else ""} \
      ~{if (force_windi_draw) then "-f" else ""} \
      ~{if (no_leg) then "--no-leg" else ""} \
      ~{if (no_head) then "--no-head" else ""} \
      ~{if (no_foot) then "--no-foot" else ""} \
      ~{if (mask_col) then "--mask-col" else ""} \
      ~{if defined(mask_diff) then ("--mask-diff " +  '"' + mask_diff + '"') else ""} \
      ~{if (no_pp) then "--no-pp" else ""} \
      ~{if (no_bp) then "--no-bp" else ""} \
      ~{if (no_ol) then "--no-ol" else ""} \
      ~{if (no_nt_pp) then "--no-ntpp" else ""} \
      ~{if (no_cnt) then "--no-cnt" else ""} \
      ~{if defined(c_thresh) then ("--cthresh " +  '"' + c_thresh + '"') else ""} \
      ~{if (cam_big) then "--cambig" else ""} \
      ~{if defined(a_thresh) then ("--athresh " +  '"' + a_thresh + '"') else ""} \
      ~{if (mask_u) then "--mask-u" else ""} \
      ~{if (mask_x) then "--mask-x" else ""} \
      ~{if (mask_a) then "--mask-a" else ""} \
      ~{if defined(d_file) then ("--dfile " +  '"' + d_file + '"') else ""} \
      ~{if defined(e_file) then ("--efile " +  '"' + e_file + '"') else ""} \
      ~{if defined(i_file) then ("--ifile " +  '"' + i_file + '"') else ""}
  >>>
  parameter_meta {
    draw_default_set: ": draw default set of alignment summary diagrams"
    mask: ": for all diagrams, mark masked ('0') columns from mask in <f>"
    small: ": operate in small memory mode (aln must be 1 line/seq Pfam format)"
    cons: ": draw diagram showing the alignment's consensus sequence"
    info: ": draw information content diagram"
    mut_info: ": draw base pair mutual information diagram"
    ifreq: ": draw insert frequency diagram"
    i_avg_len: ": draw average insert length diagram"
    d_all: ": draw delete diagram w/all deletions (incl. terminal deletes)"
    prob: ": draw average posterior probability diagram"
    span: ": draw diagram showing fraction of seqs that span each posn"
    rf: ": draw diagram showing reference (#=GC RF) sequence"
    dint: ": draw delete diagram w/only internal (non-terminal) deletions"
    tab_file: ": output per position data in tabular format to file <f>"
    indi: ": draw diagrams for individual sequences in the alignment"
    force_windi_draw: ": force; w/--indi draw all seqs, even if predicted output >100 Mb"
    no_leg: ": do not draw legend"
    no_head: ": do not draw header"
    no_foot: ": do not draw footer"
    mask_col: ": w/--mask draw two color diagram denoting masked columns"
    mask_diff: ": with --mask <f1>, compare mask in <f1> to mask in <f>"
    no_pp: ": with --indi, do not draw indi posterior probability diagrams"
    no_bp: ": do not color nucleotides based on basepair type"
    no_ol: ": w/--indi, do not outline nts that are not most common nt"
    no_nt_pp: ": w/--indi, do not draw nts on individual post prob diagrams"
    no_cnt: ": do not draw consensus nts on alignment summary diagrams"
    c_thresh: ": capitalize cons nts occuring in >= <x> fraction of seqs"
    cam_big: ": allow ambiguous nts in consensus sequence"
    a_thresh: ": w/--cambig, cons nt must represent >= <x> fraction of seqs"
    mask_u: ": with --mask, mark masked columns as squares"
    mask_x: ": with --mask, mark masked columns as x's"
    mask_a: ": with --mask-u or --mask-x, draw alternative mask style"
    d_file: ": read 'draw file' specifying >=1 diagrams"
    e_file: ": read 'expert draw file' specifying >=1 diagrams"
    i_file: ": read insert information from cmalign insert file <f>"
  }
  output {
    File out_stdout = stdout()
    File out_tab_file = "${in_tab_file}"
  }
}