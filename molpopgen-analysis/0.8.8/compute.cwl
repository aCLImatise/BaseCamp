class: CommandLineTool
id: compute.cwl
inputs:
- id: n
  doc: ': use the total # of segregating sites, rather than # of mutations'
  type: boolean
  inputBinding:
    prefix: -n
- id: v
  doc: ': verbose progress reporting to standard error'
  type: boolean
  inputBinding:
    prefix: -v
- id: v
  doc: ': pretty output'
  type: boolean
  inputBinding:
    prefix: -V
outputs: []
cwlVersion: v1.1
baseCommand:
- compute
