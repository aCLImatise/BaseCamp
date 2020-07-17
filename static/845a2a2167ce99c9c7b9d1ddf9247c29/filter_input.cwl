class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/filter_input.py.cwl
inputs:
- id: paired_end_one_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: paired_end_two_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: cm_dir
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: cm_to_use
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: num_of_cpu
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_input.py
