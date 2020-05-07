class: CommandLineTool
id: faRc_in.fa.cwl
inputs:
- id: out_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- faRc
- in.fa
