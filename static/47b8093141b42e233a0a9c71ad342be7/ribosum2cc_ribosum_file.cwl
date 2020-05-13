class: CommandLineTool
id: ribosum2cc_ribosum_file.cwl
inputs:
- id: ribo_sum_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ribo_sum_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- ribosum2cc
- ribosum-file
