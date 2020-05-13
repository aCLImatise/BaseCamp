class: CommandLineTool
id: refgenie.cwl
inputs:
- id: silent
  doc: Silence logging. Overrides verbosity.
  type: boolean
  inputBinding:
    prefix: --silent
- id: verbosity
  doc: Set logging level (1-5 or logging module level name)
  type: string
  inputBinding:
    prefix: --verbosity
- id: log_dev
  doc: Expand content of logging message format.
  type: boolean
  inputBinding:
    prefix: --logdev
outputs: []
cwlVersion: v1.1
baseCommand:
- refgenie
