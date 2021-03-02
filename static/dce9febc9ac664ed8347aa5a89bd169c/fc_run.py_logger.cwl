class: CommandLineTool
id: fc_run.py_logger.cwl
inputs:
- id: in_fc_run_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_config
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_logger
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fc_run.py
- logger
