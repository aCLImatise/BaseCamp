class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/obgen.cwl
inputs:
- id: ff
  doc: select a forcefield
  type: boolean
  inputBinding:
    prefix: -ff
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- obgen
