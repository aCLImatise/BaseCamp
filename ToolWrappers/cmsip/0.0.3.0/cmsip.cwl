class: CommandLineTool
id: cmsip.cwl
inputs:
- id: in_config
  doc: Configuration file in YAML format.
  type: File?
  inputBinding:
    prefix: --config
- id: in_define_variablevalue_suppress
  doc: "Define variable=value to suppress configuration file.\ne.g. \"-D dhmrinfo.verbose=False\""
  type: string[]
  inputBinding:
    prefix: -D
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cmsip
