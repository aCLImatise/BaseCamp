class: CommandLineTool
id: ../../../model.cwl
inputs:
- id: in_for
  doc: 'using a fit model:'
  type: string
  inputBinding:
    prefix: -for
- id: in_verbosity
  doc: 'Increase output verbosity (default: None)'
  type: boolean
  inputBinding:
    prefix: --verbosity
- id: in_no_logging
  doc: 'If set, do not log on file. (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-logging
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- model
