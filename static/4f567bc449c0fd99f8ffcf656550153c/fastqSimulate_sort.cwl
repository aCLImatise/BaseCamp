class: CommandLineTool
id: fastqSimulate_sort.cwl
inputs:
- id: i1
  doc: ''
  type: string
  inputBinding:
    prefix: -i1
- id: i2
  doc: ''
  type: string
  inputBinding:
    prefix: -i2
- id: o1
  doc: ''
  type: string
  inputBinding:
    prefix: -o1
- id: o2
  doc: ''
  type: string
  inputBinding:
    prefix: -o2
outputs: []
cwlVersion: v1.1
baseCommand:
- fastqSimulate-sort
