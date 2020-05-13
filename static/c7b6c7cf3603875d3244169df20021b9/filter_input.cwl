class: CommandLineTool
id: filter_input.py.cwl
inputs:
- id: python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: filter_input_py
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: paired_end_1fasta
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: paired_end_2fasta
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: output_dir
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: cm_dir
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: cm_to_use
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: num_of_cpu
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_input.py
