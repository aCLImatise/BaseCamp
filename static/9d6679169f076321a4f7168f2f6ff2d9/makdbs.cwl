class: CommandLineTool
id: makdbs.cwl
inputs:
- id: name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: source_files
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: k
  doc: '[D|P] : DNA or Protein sequence'
  type: boolean
  inputBinding:
    prefix: -K
outputs: []
cwlVersion: v1.1
baseCommand:
- makdbs
