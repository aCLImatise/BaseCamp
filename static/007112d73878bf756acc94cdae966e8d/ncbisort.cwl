class: CommandLineTool
id: ../../../ncbisort.cwl
inputs:
- id: cmu
  doc: ''
  type: boolean
  inputBinding:
    prefix: -cmu
- id: tc
  doc: ''
  type: boolean
  inputBinding:
    prefix: -tc
- id: o
  doc: ''
  type: File
  inputBinding:
    prefix: -o
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -T
outputs: []
cwlVersion: v1.1
baseCommand:
- ncbisort
