class: CommandLineTool
id: deepac_convert_model.cwl
inputs:
- id: in_i
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_w
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_deep_ac
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_convert
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_config
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_model
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/deepac:0.13.6--py_0
cwlVersion: v1.1
baseCommand:
- deepac
- convert
- model
