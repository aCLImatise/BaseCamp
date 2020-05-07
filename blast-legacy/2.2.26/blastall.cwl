class: CommandLineTool
id: blastall.cwl
inputs:
- id: m
  doc: 'alignment view options:'
  type: boolean
  inputBinding:
    prefix: -m
- id: k
  doc: Number of best hits from a region to keep. Off by default.
  type: boolean
  inputBinding:
    prefix: -K
- id: c
  doc: 'Use composition-based score adjustments for blastp or tblastn: As first character:
    D or d: default (equivalent to T) 0 or F or f: no composition-based statistics
    2 or T or t: Composition-based score adjustments as in Bioinformatics 21:902-911,
    1: Composition-based statistics as in NAR 29:2994-3005, 2001 2005, conditioned
    on sequence properties 3: Composition-based score adjustment as in Bioinformatics
    21:902-911, 2005, unconditionally For programs other than tblastn, must either
    be absent or be D, F or 0. As second character, if first character is equivalent
    to 1, 2, or 3: U or u: unified p-value combining alignment p-value and compositional
    p-value in round 1 only'
  type: boolean
  inputBinding:
    prefix: -C
outputs: []
cwlVersion: v1.1
baseCommand:
- blastall
