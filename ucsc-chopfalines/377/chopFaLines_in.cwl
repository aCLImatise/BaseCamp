class: CommandLineTool
id: chopFaLines_in.fa.cwl
inputs:
- id: out_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- chopFaLines
- in.fa
