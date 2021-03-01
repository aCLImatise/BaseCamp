class: CommandLineTool
id: hca_dss_create_version.cwl
inputs:
- id: in_log_level
  doc: ''
  type: string?
  inputBinding:
    prefix: --log-level
- id: in_hca
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- create-version
