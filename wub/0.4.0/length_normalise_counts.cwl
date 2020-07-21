class: CommandLineTool
id: ../../../length_normalise_counts.py_output_count.cwl
inputs:
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: length_normalise_counts_do_tpy
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: input_counts
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_count
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- length_normalise_counts.py
- output_count
