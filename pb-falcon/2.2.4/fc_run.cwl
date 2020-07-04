class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fc_run.py_logger.cwl
inputs:
- id: fc_run_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: config
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: logger
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- fc_run.py
- logger
