class: CommandLineTool
id: esl_ssdraw.cwl
inputs:
- id: d
  doc: ': draw default set of alignment summary diagrams'
  type: boolean
  inputBinding:
    prefix: -d
- id: mask
  doc: ": for all diagrams, mark masked ('0') columns from mask in <f>"
  type: string
  inputBinding:
    prefix: --mask
- id: small
  doc: ': operate in small memory mode (aln must be 1 line/seq Pfam format)'
  type: boolean
  inputBinding:
    prefix: --small
- id: cons
  doc: ": draw diagram showing the alignment's consensus sequence"
  type: boolean
  inputBinding:
    prefix: --cons
- id: info
  doc: ': draw information content diagram'
  type: boolean
  inputBinding:
    prefix: --info
- id: mut_info
  doc: ': draw base pair mutual information diagram'
  type: boolean
  inputBinding:
    prefix: --mutinfo
- id: ifreq
  doc: ': draw insert frequency diagram'
  type: boolean
  inputBinding:
    prefix: --ifreq
- id: i_avg_len
  doc: ': draw average insert length diagram'
  type: boolean
  inputBinding:
    prefix: --iavglen
- id: d_all
  doc: ': draw delete diagram w/all deletions (incl. terminal deletes)'
  type: boolean
  inputBinding:
    prefix: --dall
- id: prob
  doc: ': draw average posterior probability diagram'
  type: boolean
  inputBinding:
    prefix: --prob
- id: span
  doc: ': draw diagram showing fraction of seqs that span each posn'
  type: boolean
  inputBinding:
    prefix: --span
- id: rf
  doc: ': draw diagram showing reference (#=GC RF) sequence'
  type: boolean
  inputBinding:
    prefix: --rf
- id: dint
  doc: ': draw delete diagram w/only internal (non-terminal) deletions'
  type: boolean
  inputBinding:
    prefix: --dint
- id: tab_file
  doc: ': output per position data in tabular format to file <f>'
  type: string
  inputBinding:
    prefix: --tabfile
- id: indi
  doc: ': draw diagrams for individual sequences in the alignment'
  type: boolean
  inputBinding:
    prefix: --indi
- id: f
  doc: ': force; w/--indi draw all seqs, even if predicted output >100 Mb'
  type: boolean
  inputBinding:
    prefix: -f
- id: no_leg
  doc: ': do not draw legend'
  type: boolean
  inputBinding:
    prefix: --no-leg
- id: no_head
  doc: ': do not draw header'
  type: boolean
  inputBinding:
    prefix: --no-head
- id: no_foot
  doc: ': do not draw footer'
  type: boolean
  inputBinding:
    prefix: --no-foot
- id: mask_col
  doc: ': w/--mask draw two color diagram denoting masked columns'
  type: boolean
  inputBinding:
    prefix: --mask-col
- id: mask_diff
  doc: ': with --mask <f1>, compare mask in <f1> to mask in <f>'
  type: string
  inputBinding:
    prefix: --mask-diff
- id: no_pp
  doc: ': with --indi, do not draw indi posterior probability diagrams'
  type: boolean
  inputBinding:
    prefix: --no-pp
- id: no_bp
  doc: ': do not color nucleotides based on basepair type'
  type: boolean
  inputBinding:
    prefix: --no-bp
- id: no_ol
  doc: ': w/--indi, do not outline nts that are not most common nt'
  type: boolean
  inputBinding:
    prefix: --no-ol
- id: no_nt_pp
  doc: ': w/--indi, do not draw nts on individual post prob diagrams'
  type: boolean
  inputBinding:
    prefix: --no-ntpp
- id: no_cnt
  doc: ': do not draw consensus nts on alignment summary diagrams'
  type: boolean
  inputBinding:
    prefix: --no-cnt
- id: c_thresh
  doc: ': capitalize cons nts occuring in >= <x> fraction of seqs'
  type: string
  inputBinding:
    prefix: --cthresh
- id: cam_big
  doc: ': allow ambiguous nts in consensus sequence'
  type: boolean
  inputBinding:
    prefix: --cambig
- id: a_thresh
  doc: ': w/--cambig, cons nt must represent >= <x> fraction of seqs'
  type: string
  inputBinding:
    prefix: --athresh
- id: mask_u
  doc: ': with --mask, mark masked columns as squares'
  type: boolean
  inputBinding:
    prefix: --mask-u
- id: mask_x
  doc: ": with --mask, mark masked columns as x's"
  type: boolean
  inputBinding:
    prefix: --mask-x
- id: mask_a
  doc: ': with --mask-u or --mask-x, draw alternative mask style'
  type: boolean
  inputBinding:
    prefix: --mask-a
- id: d_file
  doc: ": read 'draw file' specifying >=1 diagrams"
  type: string
  inputBinding:
    prefix: --dfile
- id: e_file
  doc: ": read 'expert draw file' specifying >=1 diagrams"
  type: string
  inputBinding:
    prefix: --efile
- id: i_file
  doc: ': read insert information from cmalign insert file <f>'
  type: string
  inputBinding:
    prefix: --ifile
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-ssdraw
