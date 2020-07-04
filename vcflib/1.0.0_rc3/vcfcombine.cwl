class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vcfcombine.cwl
inputs:
- id: region
  doc: A region specifier of the form chrN:x-y to bound the merge
  type: string
  inputBinding:
    prefix: --region
- id: var_1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_2
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: var_3
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: var_4
  doc: ''
  type: File
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfcombine
