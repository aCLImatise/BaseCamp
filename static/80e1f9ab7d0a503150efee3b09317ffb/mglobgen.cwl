class: CommandLineTool
id: ../../../mglobgen.cwl
inputs:
- id: ff
  doc: select a forcefield
  type: boolean
  inputBinding:
    prefix: -ff
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
outputs: []
cwlVersion: v1.1
baseCommand:
- mglobgen
