class: CommandLineTool
id: chromosomer_assemble.cwl
inputs:
- id: s
  doc: ''
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- chromosomer
- assemble
