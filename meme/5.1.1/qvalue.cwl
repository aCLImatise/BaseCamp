class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/qvalue.cwl
inputs:
- id: seed
  doc: (default from clock)
  type: long
  inputBinding:
    prefix: --seed
- id: verbosity
  doc: '|2|3|4 (default = 2)'
  type: string
  inputBinding:
    prefix: --verbosity
- id: p_values
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- qvalue
