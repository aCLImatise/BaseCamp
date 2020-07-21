class: CommandLineTool
id: ../../../mockinbird_postprocess.cwl
inputs:
- id: prefix
  doc: 'preprocessing filename prefix - only required if there are multiple table
    files in the specified preprocess directory (default: None)'
  type: string
  inputBinding:
    prefix: --prefix
- id: log_level
  doc: 'verbosity level of the logger (default: info)'
  type: string
  inputBinding:
    prefix: --log_level
outputs: []
cwlVersion: v1.1
baseCommand:
- mockinbird
- postprocess
