class: CommandLineTool
id: diff_motif.cwl
inputs:
- id: motif1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: motif2
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: o
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
outputs: []
cwlVersion: v1.1
baseCommand:
- diff_motif
