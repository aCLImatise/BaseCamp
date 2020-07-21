class: CommandLineTool
id: ../../../mockinbird_preprocess.cwl
inputs:
- id: log_level
  doc: 'verbosity level of the logger (default: info)'
  type: string
  inputBinding:
    prefix: --log_level
outputs: []
cwlVersion: v1.1
baseCommand:
- mockinbird
- preprocess
