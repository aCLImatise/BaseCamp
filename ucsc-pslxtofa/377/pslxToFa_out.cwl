class: CommandLineTool
id: pslxToFa_out.fa.cwl
inputs:
- id: in_psl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pslxToFa
- out.fa
