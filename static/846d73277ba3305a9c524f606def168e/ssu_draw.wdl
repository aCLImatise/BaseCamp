version 1.0

task SsuDraw {
  input {
    Boolean? commandline_argument_stockholm
    Boolean? force_windi_draw
    Boolean? display_default_ssualign
    String? display_single_mask
    String? display_masks_modelnamesmask
    String? cm_file_f
    String? use_template_file
    Boolean? i_used_ssualign
    String? pstwo_pdf
    Boolean? ps_only
    String? i_file
    String? key_out
    Boolean? no_mask
    Boolean? mask_key
    Boolean? info
    Boolean? mut_info
    Boolean? ifreq
    Boolean? i_avg_len
    Boolean? d_all
    Boolean? dint
    Boolean? prob
    Boolean? span
    Boolean? cnt
    Boolean? no_aln
    Boolean? indi
    Boolean? cons
    Boolean? rf
    Boolean? no_pp
    Boolean? no_bp
    Boolean? no_ol
    Boolean? no_leg
    Boolean? no_head
    Boolean? no_foot
    Boolean? options
  }
  command <<<
    ssu-draw \
      ~{true="-a" false="" commandline_argument_stockholm} \
      ~{true="-f" false="" force_windi_draw} \
      ~{true="-d" false="" display_default_ssualign} \
      ~{if defined(display_single_mask) then ("-s " +  '"' + display_single_mask + '"') else ""} \
      ~{if defined(display_masks_modelnamesmask) then ("-k " +  '"' + display_masks_modelnamesmask + '"') else ""} \
      ~{if defined(cm_file_f) then ("-m " +  '"' + cm_file_f + '"') else ""} \
      ~{if defined(use_template_file) then ("-t " +  '"' + use_template_file + '"') else ""} \
      ~{true="-i" false="" i_used_ssualign} \
      ~{if defined(pstwo_pdf) then ("--ps2pdf " +  '"' + pstwo_pdf + '"') else ""} \
      ~{true="--ps-only" false="" ps_only} \
      ~{if defined(i_file) then ("--ifile " +  '"' + i_file + '"') else ""} \
      ~{if defined(key_out) then ("--key-out " +  '"' + key_out + '"') else ""} \
      ~{true="--no-mask" false="" no_mask} \
      ~{true="--mask-key" false="" mask_key} \
      ~{true="--info" false="" info} \
      ~{true="--mutinfo" false="" mut_info} \
      ~{true="--ifreq" false="" ifreq} \
      ~{true="--iavglen" false="" i_avg_len} \
      ~{true="--dall" false="" d_all} \
      ~{true="--dint" false="" dint} \
      ~{true="--prob" false="" prob} \
      ~{true="--span" false="" span} \
      ~{true="--cnt" false="" cnt} \
      ~{true="--no-aln" false="" no_aln} \
      ~{true="--indi" false="" indi} \
      ~{true="--cons" false="" cons} \
      ~{true="--rf" false="" rf} \
      ~{true="--no-pp" false="" no_pp} \
      ~{true="--no-bp" false="" no_bp} \
      ~{true="--no-ol" false="" no_ol} \
      ~{true="--no-leg" false="" no_leg} \
      ~{true="--no-head" false="" no_head} \
      ~{true="--no-foot" false="" no_foot} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    commandline_argument_stockholm: ": the command-line argument is a stockholm alignment, not a directory"
    force_windi_draw: ": force; w/--indi, draw all seqs, even if predicted output >100 Mb"
    display_default_ssualign: ": display default ssu-align-0.1 masks on drawings"
    display_single_mask: ": display single mask in file <f> for single alignment (requires -a)"
    display_masks_modelnamesmask: ": display masks from files named <modelname>.<s>.mask on drawings (<modelname> might be 'archaea', 'bacteria' or 'eukarya')"
    cm_file_f: ": CM file <f> created the alignment(s) (with ssu-align -m <f>)"
    use_template_file: ": use template file <f>, not the default template file"
    i_used_ssualign: ": -i used with ssu-align, alignments are interleaved"
    pstwo_pdf: ": <s> (!= \"ps2pdf\") is the command for converting ps to pdf"
    ps_only: ": only save postscript secondary structure diagrams, no pdfs"
    i_file: ": insert info for alignment is in <s> (requires -a)"
    key_out: ": add <s> to all output file names, before the suffix"
    no_mask: ": do not use ssu-mask created '.mask' files in the aln dir"
    mask_key: ": display masks from files named <dir>.<modelname>.<s>.mask on drawings (typically used after running 'ssu-mask --key-out <s>')"
    info: ": draw sequence information content per position    (save as *.info.pdf)"
    mut_info: ": draw mutual information per position              (save as *.mutinfo.pdf)"
    ifreq: ": draw frequency of insertions per position         (save as *.ifreq.pdf)"
    i_avg_len: ": draw average length of insertions per position    (save as *.iavglen.pdf)"
    d_all: ": draw frequency of deletions per position          (save as *.dall.pdf)"
    dint: ": draw frequency of internal deletions per position (save as *.dint.pdf)"
    prob: ": draw average posterior probability per position   (save as *.prob.pdf)"
    span: ": draw fraction of seqs that span each position     (save as *.span.pdf)"
    cnt: ": draw consensus nucleotides on alignment summary diagrams"
    no_aln: ": do not create multi-page pdf with all alignment stats"
    indi: ": draw sequence and probability diagrams for all aligned sequences"
    cons: ": draw alignment consensus sequence       (save as *.cons.pdf)"
    rf: ": draw model reference (#=GC RF) sequence (save as *.rf.pdf)"
    no_pp: ": with --indi, omit probability diagrams"
    no_bp: ": w/--indi,--rf or --cons, do not color nts based on basepair type"
    no_ol: ": w/--indi, do not outline nts that are not most common nt"
    no_leg: ": do not draw legends"
    no_head: ": do not draw headers"
    no_foot: ": do not draw footers"
    options: ""
  }
}