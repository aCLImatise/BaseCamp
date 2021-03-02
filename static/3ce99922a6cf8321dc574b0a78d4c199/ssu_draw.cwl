class: CommandLineTool
id: ssu_draw.cwl
inputs:
- id: in_commandline_argument_stockholm
  doc: ': the command-line argument is a stockholm alignment, not a directory'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_force_draw_seqs
  doc: ': force; w/--indi, draw all seqs, even if predicted output >100 Mb'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_display_default_ssualign
  doc: ': display default ssu-align-0.1 masks on drawings'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_display_single_mask
  doc: ': display single mask in file <f> for single alignment (requires -a)'
  type: File?
  inputBinding:
    prefix: -s
- id: in_display_masks_modelnamesmask
  doc: ": display masks from files named <modelname>.<s>.mask on drawings\n(<modelname>\
    \ might be 'archaea', 'bacteria' or 'eukarya')"
  type: string?
  inputBinding:
    prefix: -k
- id: in_cm_file_created
  doc: ': CM file <f> created the alignment(s) (with ssu-align -m <f>)'
  type: File?
  inputBinding:
    prefix: -m
- id: in_use_template_file
  doc: ': use template file <f>, not the default template file'
  type: File?
  inputBinding:
    prefix: -t
- id: in_i_used_ssualign
  doc: ': -i used with ssu-align, alignments are interleaved'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_pstwo_pdf
  doc: ': <s> (!= "ps2pdf") is the command for converting ps to pdf'
  type: long?
  inputBinding:
    prefix: --ps2pdf
- id: in_ps_only
  doc: ': only save postscript secondary structure diagrams, no pdfs'
  type: boolean?
  inputBinding:
    prefix: --ps-only
- id: in_i_file
  doc: ': insert info for alignment is in <s> (requires -a)'
  type: string?
  inputBinding:
    prefix: --ifile
- id: in_key_out
  doc: ': add <s> to all output file names, before the suffix'
  type: File?
  inputBinding:
    prefix: --key-out
- id: in_no_mask
  doc: ": do not use ssu-mask created '.mask' files in the aln dir"
  type: boolean?
  inputBinding:
    prefix: --no-mask
- id: in_mask_key
  doc: ": display masks from files named <dir>.<modelname>.<s>.mask on drawings\n\
    (typically used after running 'ssu-mask --key-out <s>')"
  type: boolean?
  inputBinding:
    prefix: --mask-key
- id: in_info
  doc: ': draw sequence information content per position    (save as *.info.pdf)'
  type: boolean?
  inputBinding:
    prefix: --info
- id: in_mut_info
  doc: ': draw mutual information per position              (save as *.mutinfo.pdf)'
  type: boolean?
  inputBinding:
    prefix: --mutinfo
- id: in_ifreq
  doc: ': draw frequency of insertions per position         (save as *.ifreq.pdf)'
  type: boolean?
  inputBinding:
    prefix: --ifreq
- id: in_i_avg_len
  doc: ': draw average length of insertions per position    (save as *.iavglen.pdf)'
  type: boolean?
  inputBinding:
    prefix: --iavglen
- id: in_d_all
  doc: ': draw frequency of deletions per position          (save as *.dall.pdf)'
  type: boolean?
  inputBinding:
    prefix: --dall
- id: in_dint
  doc: ': draw frequency of internal deletions per position (save as *.dint.pdf)'
  type: boolean?
  inputBinding:
    prefix: --dint
- id: in_prob
  doc: ': draw average posterior probability per position   (save as *.prob.pdf)'
  type: boolean?
  inputBinding:
    prefix: --prob
- id: in_span
  doc: ': draw fraction of seqs that span each position     (save as *.span.pdf)'
  type: boolean?
  inputBinding:
    prefix: --span
- id: in_cnt
  doc: ': draw consensus nucleotides on alignment summary diagrams'
  type: boolean?
  inputBinding:
    prefix: --cnt
- id: in_no_aln
  doc: ': do not create multi-page pdf with all alignment stats'
  type: boolean?
  inputBinding:
    prefix: --no-aln
- id: in_indi
  doc: ': draw sequence and probability diagrams for all aligned sequences'
  type: boolean?
  inputBinding:
    prefix: --indi
- id: in_cons
  doc: ': draw alignment consensus sequence       (save as *.cons.pdf)'
  type: boolean?
  inputBinding:
    prefix: --cons
- id: in_rf
  doc: ': draw model reference (#=GC RF) sequence (save as *.rf.pdf)'
  type: boolean?
  inputBinding:
    prefix: --rf
- id: in_no_pp
  doc: ': with --indi, omit probability diagrams'
  type: boolean?
  inputBinding:
    prefix: --no-pp
- id: in_no_bp
  doc: ': w/--indi,--rf or --cons, do not color nts based on basepair type'
  type: boolean?
  inputBinding:
    prefix: --no-bp
- id: in_no_ol
  doc: ': w/--indi, do not outline nts that are not most common nt'
  type: boolean?
  inputBinding:
    prefix: --no-ol
- id: in_no_leg
  doc: ': do not draw legends'
  type: boolean?
  inputBinding:
    prefix: --no-leg
- id: in_no_head
  doc: ': do not draw headers'
  type: boolean?
  inputBinding:
    prefix: --no-head
- id: in_no_foot
  doc: ': do not draw footers'
  type: boolean?
  inputBinding:
    prefix: --no-foot
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_key_out
  doc: ': add <s> to all output file names, before the suffix'
  type: File?
  outputBinding:
    glob: $(inputs.in_key_out)
hints: []
cwlVersion: v1.1
baseCommand:
- ssu-draw
