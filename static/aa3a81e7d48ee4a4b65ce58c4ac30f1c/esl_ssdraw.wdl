version 1.0

task EslSsdraw {
  input {
    Boolean? draw_default_set
    String? mask
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
    String? tab_file
    Boolean? indi
    Boolean? force_windi_draw
    Boolean? no_leg
    Boolean? no_head
    Boolean? no_foot
    Boolean? mask_col
    String? mask_diff
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
    String? d_file
    String? e_file
    String? i_file
  }
  command <<<
    esl-ssdraw \
      ~{true="-d" false="" draw_default_set} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{true="--small" false="" small} \
      ~{true="--cons" false="" cons} \
      ~{true="--info" false="" info} \
      ~{true="--mutinfo" false="" mut_info} \
      ~{true="--ifreq" false="" ifreq} \
      ~{true="--iavglen" false="" i_avg_len} \
      ~{true="--dall" false="" d_all} \
      ~{true="--prob" false="" prob} \
      ~{true="--span" false="" span} \
      ~{true="--rf" false="" rf} \
      ~{true="--dint" false="" dint} \
      ~{if defined(tab_file) then ("--tabfile " +  '"' + tab_file + '"') else ""} \
      ~{true="--indi" false="" indi} \
      ~{true="-f" false="" force_windi_draw} \
      ~{true="--no-leg" false="" no_leg} \
      ~{true="--no-head" false="" no_head} \
      ~{true="--no-foot" false="" no_foot} \
      ~{true="--mask-col" false="" mask_col} \
      ~{if defined(mask_diff) then ("--mask-diff " +  '"' + mask_diff + '"') else ""} \
      ~{true="--no-pp" false="" no_pp} \
      ~{true="--no-bp" false="" no_bp} \
      ~{true="--no-ol" false="" no_ol} \
      ~{true="--no-ntpp" false="" no_nt_pp} \
      ~{true="--no-cnt" false="" no_cnt} \
      ~{if defined(c_thresh) then ("--cthresh " +  '"' + c_thresh + '"') else ""} \
      ~{true="--cambig" false="" cam_big} \
      ~{if defined(a_thresh) then ("--athresh " +  '"' + a_thresh + '"') else ""} \
      ~{true="--mask-u" false="" mask_u} \
      ~{true="--mask-x" false="" mask_x} \
      ~{true="--mask-a" false="" mask_a} \
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
}