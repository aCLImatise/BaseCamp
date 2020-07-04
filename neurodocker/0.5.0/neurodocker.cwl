class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/neurodocker.cwl
inputs:
- id: var_0
  doc: ''
  type: string
  inputBinding:
    prefix: -v
- id: var_1
  doc: ''
  type: boolean
  inputBinding:
    prefix: -V
outputs: []
cwlVersion: v1.1
baseCommand:
- neurodocker
