class: CommandLineTool
id: fathom_ann.cwl
inputs:
- id: dna
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: commands
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fathom
- ann
