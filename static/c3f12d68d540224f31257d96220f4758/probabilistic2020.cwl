class: CommandLineTool
id: probabilistic2020.cwl
inputs:
- id: log_level
  doc: Write a log file (--log-level=DEBUG for debug mode, --log-level=INFO for info
    mode)
  type: string
  inputBinding:
    prefix: --log-level
- id: log
  doc: Path to log file. (accepts "stdout")
  type: string
  inputBinding:
    prefix: --log
- id: verbose
  doc: Flag for more verbose log output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- probabilistic2020
