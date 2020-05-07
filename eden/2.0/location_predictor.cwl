class: CommandLineTool
id: location_predictor.cwl
inputs:
- id: verbosity
  doc: 'Increase output verbosity (default: None)'
  type: boolean
  inputBinding:
    prefix: --verbosity
- id: no_logging
  doc: 'If set, do not log on file. (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-logging
outputs: []
cwlVersion: v1.1
baseCommand:
- location_predictor
