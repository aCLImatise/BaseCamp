class: CommandLineTool
id: fermi_splitfa_in.fq.cwl
inputs:
- id: out_prefix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: '8'
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- splitfa
- in.fq
