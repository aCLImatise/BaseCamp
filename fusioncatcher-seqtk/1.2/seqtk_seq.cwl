class: CommandLineTool
id: seqtk_seq.cwl
inputs:
- id: v
  doc: shift quality by '(-Q) - 33'
  type: boolean
  inputBinding:
    prefix: -V
- id: u
  doc: convert all bases to uppercases
  type: boolean
  inputBinding:
    prefix: -U
- id: s
  doc: strip of white spaces in sequences
  type: boolean
  inputBinding:
    prefix: -S
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- seq
