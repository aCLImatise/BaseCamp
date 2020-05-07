class: CommandLineTool
id: ribosum2cc_ribosum_name.cwl
inputs:
- id: ribo_sum_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ribosum2cc
- ribosum-name
