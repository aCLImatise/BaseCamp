class: CommandLineTool
id: apoc.cwl
inputs:
- id: pdbfile1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pdbfile2
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: block
  doc: Load a block of concatenated pdb files.
  type: File
  inputBinding:
    prefix: -block
- id: p_vol
  doc: Minimal pocket volume in grid points. Default 100
  type: string
  inputBinding:
    prefix: -pvol
- id: plen
  doc: Minimal number of pocket residues. Default 10
  type: string
  inputBinding:
    prefix: -plen
- id: sod
  doc: Restrict to sequence-order-dependent alignment. Default no restriction.
  type: boolean
  inputBinding:
    prefix: -sod
- id: v
  doc: 'Alignment printout: 0 - none, 1 - concise, 2 - detailed (default).'
  type: boolean
  inputBinding:
    prefix: -v
- id: m
  doc: 'Similarity scoring metric:  tm (TM-score), ps (PS-score, default).'
  type: string
  inputBinding:
    prefix: -m
- id: l
  doc: Normalize the score with a fixed length specified by num.
  type: string
  inputBinding:
    prefix: -L
- id: a
  doc: Normalize the score by the average size of two structures.
  type: boolean
  inputBinding:
    prefix: -a
- id: b
  doc: Normalize the score by the minimum size of two structures.
  type: boolean
  inputBinding:
    prefix: -b
- id: c
  doc: Normalize the score by the maximum size of two structures.
  type: boolean
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- apoc
