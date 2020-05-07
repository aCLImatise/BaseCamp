class: CommandLineTool
id: faCmp.cwl
inputs:
- id: afa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bfa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: sort_name
  doc: files by name before comparing
  type: string
  inputBinding:
    prefix: -sortName
- id: peptide
  doc: peptide sequences
  type: string
  inputBinding:
    prefix: -peptide
outputs: []
cwlVersion: v1.1
baseCommand:
- faCmp
