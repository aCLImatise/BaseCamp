version 1.0

task Ssudraw {
  input {
    Boolean? commandline_argument_stockholm
    Boolean? force_draw_seqs
    Boolean? display_default_ssualign
    File? display_single_mask
    String? display_masks_modelnamesmask
    File? cm_file_created
    File? use_template_file
    Boolean? i_used_ssualign
    Int? pstwo_pdf
    Boolean? ps_only
    String? i_file
    File? key_out
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
    ssu_draw \
      ~{if (commandline_argument_stockholm) then "-a" else ""} \
      ~{if (force_draw_seqs) then "-f" else ""} \
      ~{if (display_default_ssualign) then "-d" else ""} \
      ~{if defined(display_single_mask) then ("-s " +  '"' + display_single_mask + '"') else ""} \
      ~{if defined(display_masks_modelnamesmask) then ("-k " +  '"' + display_masks_modelnamesmask + '"') else ""} \
      ~{if defined(cm_file_created) then ("-m " +  '"' + cm_file_created + '"') else ""} \
      ~{if defined(use_template_file) then ("-t " +  '"' + use_template_file + '"') else ""} \
      ~{if (i_used_ssualign) then "-i" else ""} \
      ~{if defined(pstwo_pdf) then ("--ps2pdf " +  '"' + pstwo_pdf + '"') else ""} \
      ~{if (ps_only) then "--ps-only" else ""} \
      ~{if defined(i_file) then ("--ifile " +  '"' + i_file + '"') else ""} \
      ~{if defined(key_out) then ("--key-out " +  '"' + key_out + '"') else ""} \
      ~{if (no_mask) then "--no-mask" else ""} \
      ~{if (mask_key) then "--mask-key" else ""} \
      ~{if (info) then "--info" else ""} \
      ~{if (mut_info) then "--mutinfo" else ""} \
      ~{if (ifreq) then "--ifreq" else ""} \
      ~{if (i_avg_len) then "--iavglen" else ""} \
      ~{if (d_all) then "--dall" else ""} \
      ~{if (dint) then "--dint" else ""} \
      ~{if (prob) then "--prob" else ""} \
      ~{if (span) then "--span" else ""} \
      ~{if (cnt) then "--cnt" else ""} \
      ~{if (no_aln) then "--no-aln" else ""} \
      ~{if (indi) then "--indi" else ""} \
      ~{if (cons) then "--cons" else ""} \
      ~{if (rf) then "--rf" else ""} \
      ~{if (no_pp) then "--no-pp" else ""} \
      ~{if (no_bp) then "--no-bp" else ""} \
      ~{if (no_ol) then "--no-ol" else ""} \
      ~{if (no_leg) then "--no-leg" else ""} \
      ~{if (no_head) then "--no-head" else ""} \
      ~{if (no_foot) then "--no-foot" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    commandline_argument_stockholm: ": the command-line argument is a stockholm alignment, not a directory"
    force_draw_seqs: ": force; w/--indi, draw all seqs, even if predicted output >100 Mb"
    display_default_ssualign: ": display default ssu-align-0.1 masks on drawings"
    display_single_mask: ": display single mask in file <f> for single alignment (requires -a)"
    display_masks_modelnamesmask: ": display masks from files named <modelname>.<s>.mask on drawings\\n(<modelname> might be 'archaea', 'bacteria' or 'eukarya')"
    cm_file_created: ": CM file <f> created the alignment(s) (with ssu-align -m <f>)"
    use_template_file: ": use template file <f>, not the default template file"
    i_used_ssualign: ": -i used with ssu-align, alignments are interleaved"
    pstwo_pdf: ": <s> (!= \\\"ps2pdf\\\") is the command for converting ps to pdf"
    ps_only: ": only save postscript secondary structure diagrams, no pdfs"
    i_file: ": insert info for alignment is in <s> (requires -a)"
    key_out: ": add <s> to all output file names, before the suffix"
    no_mask: ": do not use ssu-mask created '.mask' files in the aln dir"
    mask_key: ": display masks from files named <dir>.<modelname>.<s>.mask on drawings\\n(typically used after running 'ssu-mask --key-out <s>')"
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
  output {
    File out_stdout = stdout()
    File out_key_out = "${in_key_out}"
  }
}