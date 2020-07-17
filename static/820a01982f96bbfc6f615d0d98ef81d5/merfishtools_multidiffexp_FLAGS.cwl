class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/merfishtools_multidiffexp_FLAGS.cwl
inputs:
- id: mer_fish_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: multi_diff_exp
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: for
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: more
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: information
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: try
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- merfishtools
- multidiffexp
- FLAGS
