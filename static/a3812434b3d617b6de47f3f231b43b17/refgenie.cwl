class: CommandLineTool
id: ../../../refgenie.cwl
inputs:
- id: in_silent
  doc: Silence logging. Overrides verbosity.
  type: boolean
  inputBinding:
    prefix: --silent
- id: in_verbosity
  doc: Set logging level (1-5 or logging module level name)
  type: long
  inputBinding:
    prefix: --verbosity
- id: in_log_dev
  doc: Expand content of logging message format.
  type: boolean
  inputBinding:
    prefix: --logdev
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- refgenie
