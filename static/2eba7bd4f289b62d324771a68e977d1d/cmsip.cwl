class: CommandLineTool
id: ../../../cmsip.cwl
inputs:
- id: config
  doc: Configuration file in YAML format.
  type: string
  inputBinding:
    prefix: --config
- id: define_variablevalue_suppress
  doc: Define variable=value to suppress configuration file. e.g. "-D dhmrinfo.verbose=False"
  type: string[]
  inputBinding:
    prefix: -D
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- cmsip
