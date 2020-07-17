class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/svtools_vcfsort.cwl
inputs:
- id: support
  doc: ''
  type: boolean
  inputBinding:
    prefix: --support
- id: var_1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_2
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- svtools
- vcfsort
