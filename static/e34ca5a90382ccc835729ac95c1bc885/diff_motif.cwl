class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/diff_motif.cwl
inputs:
- id: show_overlapped_sequences
  doc: ': Show overlapped sequences '
  type: boolean
  inputBinding:
    prefix: -o
- id: m
  doc: ': Show sequences in motif1 that are not in motif2'
  type: boolean
  inputBinding:
    prefix: -m
- id: f
  doc: ': Show sequences in motif2 that are not in motif1'
  type: boolean
  inputBinding:
    prefix: -f
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: motif_one
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: motif_two
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- diff_motif
