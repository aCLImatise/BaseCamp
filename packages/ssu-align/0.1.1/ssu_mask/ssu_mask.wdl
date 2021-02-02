version 1.0

task Ssumask {
  input {
    Boolean? commandline_argument_stockholm
    Boolean? use_default_masks
    File? use_single_mask
    File? use_mask_file
    File? cm_file_f
    File? structure_diagrams_use
    Boolean? i_used_ssualign
    Float? pf
    Float? pt
    Boolean? rf_only
    String? gap_thresh
    Boolean? gap_only
    Boolean? afa
    Boolean? dna
    File? key_out
    Int? pstwo_pdf
    Boolean? ps_only
    Boolean? no_draw
    File? list
    Boolean? stk_two_afa
    File? seq_k
    File? seq_r
    Boolean? options
  }
  command <<<
    ssu_mask \
      ~{if (commandline_argument_stockholm) then "-a" else ""} \
      ~{if (use_default_masks) then "-d" else ""} \
      ~{if defined(use_single_mask) then ("-s " +  '"' + use_single_mask + '"') else ""} \
      ~{if defined(use_mask_file) then ("-k " +  '"' + use_mask_file + '"') else ""} \
      ~{if defined(cm_file_f) then ("-m " +  '"' + cm_file_f + '"') else ""} \
      ~{if defined(structure_diagrams_use) then ("-t " +  '"' + structure_diagrams_use + '"') else ""} \
      ~{if (i_used_ssualign) then "-i" else ""} \
      ~{if defined(pf) then ("--pf " +  '"' + pf + '"') else ""} \
      ~{if defined(pt) then ("--pt " +  '"' + pt + '"') else ""} \
      ~{if (rf_only) then "--rfonly" else ""} \
      ~{if defined(gap_thresh) then ("--gapthresh " +  '"' + gap_thresh + '"') else ""} \
      ~{if (gap_only) then "--gaponly" else ""} \
      ~{if (afa) then "--afa" else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if defined(key_out) then ("--key-out " +  '"' + key_out + '"') else ""} \
      ~{if defined(pstwo_pdf) then ("--ps2pdf " +  '"' + pstwo_pdf + '"') else ""} \
      ~{if (ps_only) then "--ps-only" else ""} \
      ~{if (no_draw) then "--no-draw" else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if (stk_two_afa) then "--stk2afa" else ""} \
      ~{if defined(seq_k) then ("--seq-k " +  '"' + seq_k + '"') else ""} \
      ~{if defined(seq_r) then ("--seq-r " +  '"' + seq_r + '"') else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    commandline_argument_stockholm: ": the command-line argument is a stockholm alignment, not a directory"
    use_default_masks: ": use default ssu-align-0.1 masks"
    use_single_mask: ": use single mask in existing file <f> to mask single alignment"
    use_mask_file: ": use mask file named <modelname>.<s>.mask for masking\\n(<modelname> might be 'archaea', 'bacteria' or 'eukarya')"
    cm_file_f: ": CM file <f> created the alignment(s) (with ssu-align -m <f>)"
    structure_diagrams_use: ": for structure diagrams, use template file <f>, not the default"
    i_used_ssualign: ": -i used with ssu-align, alignments are interleaved"
    pf: ": include columns w/<x> fraction of seqs w/prob >= --pt <y> [df: 0.95]"
    pt: ": set probability threshold as <y> [default=0.95]"
    rf_only: ": exclude insert (gap in RF) columns only"
    gap_thresh: ": only consider columns with <= <x> fraction gaps"
    gap_only: ": do not consider posterior probabilities, only gap frequencies"
    afa: ": output aligned FASTA (.afa) alignments, not Stockholm ones"
    dna: ": output alignments as DNA, default is RNA (even if input is DNA)"
    key_out: ": add <s> to all output file names, before the suffix"
    pstwo_pdf: ": <s> (!= \\\"ps2pdf\\\") is the command for converting ps to pdf"
    ps_only: ": save postscript secondary structure diagrams, don't convert to pdf"
    no_draw: ": do not draw mask diagrams"
    list: ": output list file(s) of sequence names in alignment(s)"
    stk_two_afa: ": convert Stockholm alignment(s) to aligned FASTA"
    seq_k: ": with -a, remove all sequences *except* those listed in file <f>"
    seq_r: ": with -a, remove sequences with names listed in file <f>"
    options: ""
  }
  output {
    File out_stdout = stdout()
    File out_key_out = "${in_key_out}"
    File out_list = "${in_list}"
  }
}