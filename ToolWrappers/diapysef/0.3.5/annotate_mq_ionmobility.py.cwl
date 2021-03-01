class: CommandLineTool
id: annotate_mq_ionmobility.py.cwl
inputs:
- id: in_mq_out_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_pas_ef_analysis_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_prefix
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
- annotate_mq_ionmobility.py
