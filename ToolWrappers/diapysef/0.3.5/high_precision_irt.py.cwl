class: CommandLineTool
id: high_precision_irt.py.cwl
inputs:
- id: in_mq_out_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_quality_cut_off
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- high_precision_irt.py
