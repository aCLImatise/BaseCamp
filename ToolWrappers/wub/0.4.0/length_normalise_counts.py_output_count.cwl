class: CommandLineTool
id: length_normalise_counts.py_output_count.cwl
inputs:
- id: in_f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: in_length_normalise_counts_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_counts
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_count
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- length_normalise_counts.py
- output_count
