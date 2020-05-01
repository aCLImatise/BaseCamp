#!/usr/bin/env cwl-runner

baseCommand:
- esl-ssdraw
class: CommandLineTool
cwlVersion: v1.0
id: esl-ssdraw
inputs:
- doc: ': draw default set of alignment summary diagrams'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: ": for all diagrams, mark masked ('0') columns from mask in <f>"
  id: mask
  inputBinding:
    prefix: --mask
  type: string
- doc: ': operate in small memory mode (aln must be 1 line/seq Pfam format)'
  id: small
  inputBinding:
    prefix: --small
  type: boolean
- doc: ": draw diagram showing the alignment's consensus sequence"
  id: cons
  inputBinding:
    prefix: --cons
  type: boolean
- doc: ': draw information content diagram'
  id: info
  inputBinding:
    prefix: --info
  type: boolean
- doc: ': draw base pair mutual information diagram'
  id: mut_info
  inputBinding:
    prefix: --mutinfo
  type: boolean
- doc: ': draw insert frequency diagram'
  id: ifreq
  inputBinding:
    prefix: --ifreq
  type: boolean
- doc: ': draw average insert length diagram'
  id: i_avg_len
  inputBinding:
    prefix: --iavglen
  type: boolean
- doc: ': draw delete diagram w/all deletions (incl. terminal deletes)'
  id: d_all
  inputBinding:
    prefix: --dall
  type: boolean
- doc: ': draw average posterior probability diagram'
  id: prob
  inputBinding:
    prefix: --prob
  type: boolean
- doc: ': draw diagram showing fraction of seqs that span each posn'
  id: span
  inputBinding:
    prefix: --span
  type: boolean
- doc: ': draw diagram showing reference (#=GC RF) sequence'
  id: rf
  inputBinding:
    prefix: --rf
  type: boolean
- doc: ': draw delete diagram w/only internal (non-terminal) deletions'
  id: dint
  inputBinding:
    prefix: --dint
  type: boolean
- doc: ': output per position data in tabular format to file <f>'
  id: tab_file
  inputBinding:
    prefix: --tabfile
  type: string
- doc: ': draw diagrams for individual sequences in the alignment'
  id: indi
  inputBinding:
    prefix: --indi
  type: boolean
- doc: ': force; w/--indi draw all seqs, even if predicted output >100 Mb'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: ': do not draw legend'
  id: no_leg
  inputBinding:
    prefix: --no-leg
  type: boolean
- doc: ': do not draw header'
  id: no_head
  inputBinding:
    prefix: --no-head
  type: boolean
- doc: ': do not draw footer'
  id: no_foot
  inputBinding:
    prefix: --no-foot
  type: boolean
- doc: ': w/--mask draw two color diagram denoting masked columns'
  id: mask_col
  inputBinding:
    prefix: --mask-col
  type: boolean
- doc: ': with --mask <f1>, compare mask in <f1> to mask in <f>'
  id: mask_diff
  inputBinding:
    prefix: --mask-diff
  type: string
- doc: ': with --indi, do not draw indi posterior probability diagrams'
  id: no_pp
  inputBinding:
    prefix: --no-pp
  type: boolean
- doc: ': do not color nucleotides based on basepair type'
  id: no_bp
  inputBinding:
    prefix: --no-bp
  type: boolean
- doc: ': w/--indi, do not outline nts that are not most common nt'
  id: no_ol
  inputBinding:
    prefix: --no-ol
  type: boolean
- doc: ': w/--indi, do not draw nts on individual post prob diagrams'
  id: no_nt_pp
  inputBinding:
    prefix: --no-ntpp
  type: boolean
- doc: ': do not draw consensus nts on alignment summary diagrams'
  id: no_cnt
  inputBinding:
    prefix: --no-cnt
  type: boolean
- doc: ': capitalize cons nts occuring in >= <x> fraction of seqs'
  id: c_thresh
  inputBinding:
    prefix: --cthresh
  type: string
- doc: ': allow ambiguous nts in consensus sequence'
  id: cam_big
  inputBinding:
    prefix: --cambig
  type: boolean
- doc: ': w/--cambig, cons nt must represent >= <x> fraction of seqs'
  id: a_thresh
  inputBinding:
    prefix: --athresh
  type: string
- doc: ': with --mask, mark masked columns as squares'
  id: mask_u
  inputBinding:
    prefix: --mask-u
  type: boolean
- doc: ": with --mask, mark masked columns as x's"
  id: mask_x
  inputBinding:
    prefix: --mask-x
  type: boolean
- doc: ': with --mask-u or --mask-x, draw alternative mask style'
  id: mask_a
  inputBinding:
    prefix: --mask-a
  type: boolean
- doc: ": read 'draw file' specifying >=1 diagrams"
  id: d_file
  inputBinding:
    prefix: --dfile
  type: string
- doc: ": read 'expert draw file' specifying >=1 diagrams"
  id: e_file
  inputBinding:
    prefix: --efile
  type: string
- doc: ': read insert information from cmalign insert file <f>'
  id: i_file
  inputBinding:
    prefix: --ifile
  type: string
