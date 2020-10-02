class: CommandLineTool
id: merfishtools_multidiffexp_FLAGS.cwl
inputs:
- id: in_mer_fish_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_multi_diff_exp
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_more
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_information
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_try
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- merfishtools
- multidiffexp
- FLAGS
