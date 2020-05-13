class: CommandLineTool
id: mglobgen.cwl
inputs:
- id: ob_gen
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: ff
  doc: select a forcefield
  type: boolean
  inputBinding:
    prefix: -ff
outputs: []
cwlVersion: v1.1
baseCommand:
- mglobgen
