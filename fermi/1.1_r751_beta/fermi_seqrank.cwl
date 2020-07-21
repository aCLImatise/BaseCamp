class: CommandLineTool
id: ../../../fermi_seqrank.cwl
inputs:
- id: fermi
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seq_sort
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- seqrank
