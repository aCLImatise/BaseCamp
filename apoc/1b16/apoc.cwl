class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/apoc.cwl
inputs:
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
- id: alignment_printout_none
  doc: 'Alignment printout: 0 - none, 1 - concise, 2 - detailed (default).'
  type: boolean
  inputBinding:
    prefix: -v
- id: similarity_scoring_metric
  doc: 'Similarity scoring metric:  tm (TM-score), ps (PS-score, default).'
  type: string
  inputBinding:
    prefix: -m
- id: normalize_score_fixed
  doc: Normalize the score with a fixed length specified by num.
  type: string
  inputBinding:
    prefix: -L
- id: normalize_score_average
  doc: Normalize the score by the average size of two structures.
  type: boolean
  inputBinding:
    prefix: -a
- id: normalize_score_minimum
  doc: Normalize the score by the minimum size of two structures.
  type: boolean
  inputBinding:
    prefix: -b
- id: normalize_score_maximum
  doc: Normalize the score by the maximum size of two structures.
  type: boolean
  inputBinding:
    prefix: -c
- id: pdb_file_one
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pdb_file_two
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- apoc
