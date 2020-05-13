class: CommandLineTool
id: fermi_splitfa_out.prefix.cwl
inputs:
- id: in_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: '8'
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- splitfa
- out.prefix
