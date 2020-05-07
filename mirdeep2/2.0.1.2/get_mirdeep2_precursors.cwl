class: CommandLineTool
id: get_mirdeep2_precursors.pl.cwl
inputs:
- id: s
  doc: '[int]        output only precursors with min-score >= [int]'
  type: boolean
  inputBinding:
    prefix: -s
- id: t
  doc: '[int]        output only precursors with score     <  [int]'
  type: boolean
  inputBinding:
    prefix: -t
- id: d
  doc: output dna instead of rna
  type: boolean
  inputBinding:
    prefix: -d
- id: p
  doc: make simple id with the name only
  type: boolean
  inputBinding:
    prefix: -p
- id: m
  doc: get_mature instead of precursor
  type: boolean
  inputBinding:
    prefix: -m
- id: k
  doc: get_star instead of precursor
  type: boolean
  inputBinding:
    prefix: -k
- id: t
  doc: Trackname for bedfiles
  type: boolean
  inputBinding:
    prefix: -T
- id: o
  doc: outdir
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- get_mirdeep2_precursors.pl
