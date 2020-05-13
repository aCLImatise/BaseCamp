class: CommandLineTool
id: high_precision_irt.py_quality_cutoff.cwl
inputs:
- id: mq_out_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: quality_cut_off
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- high_precision_irt.py
- quality_cutoff
