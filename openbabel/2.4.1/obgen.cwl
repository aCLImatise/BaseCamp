class: CommandLineTool
id: obgen.cwl
inputs:
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: ff
  doc: select a forcefield
  type: boolean
  inputBinding:
    prefix: -ff
outputs: []
cwlVersion: v1.1
baseCommand:
- obgen
