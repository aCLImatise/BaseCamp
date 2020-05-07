class: CommandLineTool
id: ssu_draw.cwl
inputs:
- id: a
  doc: ': the command-line argument is a stockholm alignment, not a directory'
  type: boolean
  inputBinding:
    prefix: -a
- id: f
  doc: ': force; w/--indi, draw all seqs, even if predicted output >100 Mb'
  type: boolean
  inputBinding:
    prefix: -f
- id: d
  doc: ': display default ssu-align-0.1 masks on drawings'
  type: boolean
  inputBinding:
    prefix: -d
- id: s
  doc: ': display single mask in file <f> for single alignment (requires -a)'
  type: string
  inputBinding:
    prefix: -s
- id: k
  doc: ": display masks from files named <modelname>.<s>.mask on drawings (<modelname>\
    \ might be 'archaea', 'bacteria' or 'eukarya')"
  type: string
  inputBinding:
    prefix: -k
- id: m
  doc: ': CM file <f> created the alignment(s) (with ssu-align -m <f>)'
  type: string
  inputBinding:
    prefix: -m
- id: t
  doc: ': use template file <f>, not the default template file'
  type: string
  inputBinding:
    prefix: -t
- id: i
  doc: ': -i used with ssu-align, alignments are interleaved'
  type: boolean
  inputBinding:
    prefix: -i
- id: ps2pdf
  doc: ': <s> (!= "ps2pdf") is the command for converting ps to pdf'
  type: string
  inputBinding:
    prefix: --ps2pdf
- id: ps_only
  doc: ': only save postscript secondary structure diagrams, no pdfs'
  type: boolean
  inputBinding:
    prefix: --ps-only
- id: i_file
  doc: ': insert info for alignment is in <s> (requires -a)'
  type: string
  inputBinding:
    prefix: --ifile
- id: key_out
  doc: ': add <s> to all output file names, before the suffix'
  type: string
  inputBinding:
    prefix: --key-out
- id: no_mask
  doc: ": do not use ssu-mask created '.mask' files in the aln dir"
  type: boolean
  inputBinding:
    prefix: --no-mask
- id: mask_key
  doc: ": display masks from files named <dir>.<modelname>.<s>.mask on drawings (typically\
    \ used after running 'ssu-mask --key-out <s>')"
  type: boolean
  inputBinding:
    prefix: --mask-key
- id: info
  doc: ': draw sequence information content per position    (save as *.info.pdf)'
  type: boolean
  inputBinding:
    prefix: --info
- id: mut_info
  doc: ': draw mutual information per position              (save as *.mutinfo.pdf)'
  type: boolean
  inputBinding:
    prefix: --mutinfo
- id: ifreq
  doc: ': draw frequency of insertions per position         (save as *.ifreq.pdf)'
  type: boolean
  inputBinding:
    prefix: --ifreq
- id: i_avg_len
  doc: ': draw average length of insertions per position    (save as *.iavglen.pdf)'
  type: boolean
  inputBinding:
    prefix: --iavglen
- id: d_all
  doc: ': draw frequency of deletions per position          (save as *.dall.pdf)'
  type: boolean
  inputBinding:
    prefix: --dall
- id: dint
  doc: ': draw frequency of internal deletions per position (save as *.dint.pdf)'
  type: boolean
  inputBinding:
    prefix: --dint
- id: prob
  doc: ': draw average posterior probability per position   (save as *.prob.pdf)'
  type: boolean
  inputBinding:
    prefix: --prob
- id: span
  doc: ': draw fraction of seqs that span each position     (save as *.span.pdf)'
  type: boolean
  inputBinding:
    prefix: --span
- id: cnt
  doc: ': draw consensus nucleotides on alignment summary diagrams'
  type: boolean
  inputBinding:
    prefix: --cnt
- id: no_aln
  doc: ': do not create multi-page pdf with all alignment stats'
  type: boolean
  inputBinding:
    prefix: --no-aln
- id: indi
  doc: ': draw sequence and probability diagrams for all aligned sequences'
  type: boolean
  inputBinding:
    prefix: --indi
- id: cons
  doc: ': draw alignment consensus sequence       (save as *.cons.pdf)'
  type: boolean
  inputBinding:
    prefix: --cons
- id: rf
  doc: ': draw model reference (#=GC RF) sequence (save as *.rf.pdf)'
  type: boolean
  inputBinding:
    prefix: --rf
- id: no_pp
  doc: ': with --indi, omit probability diagrams'
  type: boolean
  inputBinding:
    prefix: --no-pp
- id: no_bp
  doc: ': w/--indi,--rf or --cons, do not color nts based on basepair type'
  type: boolean
  inputBinding:
    prefix: --no-bp
- id: no_ol
  doc: ': w/--indi, do not outline nts that are not most common nt'
  type: boolean
  inputBinding:
    prefix: --no-ol
- id: no_leg
  doc: ': do not draw legends'
  type: boolean
  inputBinding:
    prefix: --no-leg
- id: no_head
  doc: ': do not draw headers'
  type: boolean
  inputBinding:
    prefix: --no-head
- id: no_foot
  doc: ': do not draw footers'
  type: boolean
  inputBinding:
    prefix: --no-foot
outputs: []
cwlVersion: v1.1
baseCommand:
- ssu-draw
