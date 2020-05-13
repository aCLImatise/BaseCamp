class: CommandLineTool
id: fathom_commands.cwl
inputs:
- id: ann
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: dna
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: commands
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- fathom
- commands
