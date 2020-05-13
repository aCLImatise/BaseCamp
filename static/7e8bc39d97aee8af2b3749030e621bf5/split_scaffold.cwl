class: CommandLineTool
id: split_scaffold.cwl
inputs:
- id: scaffold_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- split_scaffold
