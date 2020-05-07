class: CommandLineTool
id: fc_run1_logger.cwl
inputs:
- id: config
  doc: .cfg/.ini/.json
  type: string
  inputBinding:
    position: 0
- id: logger
  doc: (Optional)JSON config for standard Python logging module
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fc_run1
- logger
