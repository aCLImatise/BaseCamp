class: CommandLineTool
id: ../../../ranksum_test.cwl
inputs:
- id: p_value
  doc: '|0|1|2|3 (-1=left, 0=one-tailed,1=right, 2=two-tailed, 3=all (default))'
  type: boolean
  inputBinding:
    prefix: --p-value
- id: verbosity
  doc: '|2|3|4 (default = 2)'
  type: string
  inputBinding:
    prefix: --verbosity
- id: n
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: p
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: r
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- ranksum_test
