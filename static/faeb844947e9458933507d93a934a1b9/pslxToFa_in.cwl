class: CommandLineTool
id: pslxToFa_in.psl.cwl
inputs:
- id: out_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pslxToFa
- in.psl
