#!/usr/bin/env cwl-runner

baseCommand:
- ssu-draw
class: CommandLineTool
cwlVersion: v1.0
id: ssu-draw
inputs:
- doc: ': the command-line argument is a stockholm alignment, not a directory'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: ': force; w/--indi, draw all seqs, even if predicted output >100 Mb'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: ': display default ssu-align-0.1 masks on drawings'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: ': display single mask in file <f> for single alignment (requires -a)'
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: ": display masks from files named <modelname>.<s>.mask on drawings (<modelname>\
    \ might be 'archaea', 'bacteria' or 'eukarya')"
  id: k
  inputBinding:
    prefix: -k
  type: string
- doc: ': CM file <f> created the alignment(s) (with ssu-align -m <f>)'
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: ': use template file <f>, not the default template file'
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: ': -i used with ssu-align, alignments are interleaved'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: ': <s> (!= "ps2pdf") is the command for converting ps to pdf'
  id: ps2pdf
  inputBinding:
    prefix: --ps2pdf
  type: string
- doc: ': only save postscript secondary structure diagrams, no pdfs'
  id: ps_only
  inputBinding:
    prefix: --ps-only
  type: boolean
- doc: ': insert info for alignment is in <s> (requires -a)'
  id: i_file
  inputBinding:
    prefix: --ifile
  type: string
- doc: ': add <s> to all output file names, before the suffix'
  id: key_out
  inputBinding:
    prefix: --key-out
  type: string
- doc: ": do not use ssu-mask created '.mask' files in the aln dir"
  id: no_mask
  inputBinding:
    prefix: --no-mask
  type: boolean
- doc: ": display masks from files named <dir>.<modelname>.<s>.mask on drawings (typically\
    \ used after running 'ssu-mask --key-out <s>')"
  id: mask_key
  inputBinding:
    prefix: --mask-key
  type: boolean
- doc: ': draw sequence information content per position    (save as *.info.pdf)'
  id: info
  inputBinding:
    prefix: --info
  type: boolean
- doc: ': draw mutual information per position              (save as *.mutinfo.pdf)'
  id: mut_info
  inputBinding:
    prefix: --mutinfo
  type: boolean
- doc: ': draw frequency of insertions per position         (save as *.ifreq.pdf)'
  id: ifreq
  inputBinding:
    prefix: --ifreq
  type: boolean
- doc: ': draw average length of insertions per position    (save as *.iavglen.pdf)'
  id: i_avg_len
  inputBinding:
    prefix: --iavglen
  type: boolean
- doc: ': draw frequency of deletions per position          (save as *.dall.pdf)'
  id: d_all
  inputBinding:
    prefix: --dall
  type: boolean
- doc: ': draw frequency of internal deletions per position (save as *.dint.pdf)'
  id: dint
  inputBinding:
    prefix: --dint
  type: boolean
- doc: ': draw average posterior probability per position   (save as *.prob.pdf)'
  id: prob
  inputBinding:
    prefix: --prob
  type: boolean
- doc: ': draw fraction of seqs that span each position     (save as *.span.pdf)'
  id: span
  inputBinding:
    prefix: --span
  type: boolean
- doc: ': draw consensus nucleotides on alignment summary diagrams'
  id: cnt
  inputBinding:
    prefix: --cnt
  type: boolean
- doc: ': do not create multi-page pdf with all alignment stats'
  id: no_aln
  inputBinding:
    prefix: --no-aln
  type: boolean
- doc: ': draw sequence and probability diagrams for all aligned sequences'
  id: indi
  inputBinding:
    prefix: --indi
  type: boolean
- doc: ': draw alignment consensus sequence       (save as *.cons.pdf)'
  id: cons
  inputBinding:
    prefix: --cons
  type: boolean
- doc: ': draw model reference (#=GC RF) sequence (save as *.rf.pdf)'
  id: rf
  inputBinding:
    prefix: --rf
  type: boolean
- doc: ': with --indi, omit probability diagrams'
  id: no_pp
  inputBinding:
    prefix: --no-pp
  type: boolean
- doc: ': w/--indi,--rf or --cons, do not color nts based on basepair type'
  id: no_bp
  inputBinding:
    prefix: --no-bp
  type: boolean
- doc: ': w/--indi, do not outline nts that are not most common nt'
  id: no_ol
  inputBinding:
    prefix: --no-ol
  type: boolean
- doc: ': do not draw legends'
  id: no_leg
  inputBinding:
    prefix: --no-leg
  type: boolean
- doc: ': do not draw headers'
  id: no_head
  inputBinding:
    prefix: --no-head
  type: boolean
- doc: ': do not draw footers'
  id: no_foot
  inputBinding:
    prefix: --no-foot
  type: boolean
