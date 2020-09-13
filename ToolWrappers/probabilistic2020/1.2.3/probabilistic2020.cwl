class: CommandLineTool
id: ../../../probabilistic2020.cwl
inputs:
- id: in_log_level
  doc: "Write a log file (--log-level=DEBUG for debug mode,\n--log-level=INFO for\
    \ info mode)"
  type: File
  inputBinding:
    prefix: --log-level
- id: in_log
  doc: Path to log file. (accepts "stdout")
  type: File
  inputBinding:
    prefix: --log
- id: in_verbose
  doc: Flag for more verbose log output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- probabilistic2020
