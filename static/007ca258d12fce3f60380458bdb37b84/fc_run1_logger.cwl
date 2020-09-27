class: CommandLineTool
id: fc_run1_logger.cwl
inputs:
- id: in_fc_run_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_config
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_logger
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
- fc_run1
- logger
