class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fc_run1_logger.cwl
inputs:
- id: fc_run_one
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
- fc_run1
- logger
