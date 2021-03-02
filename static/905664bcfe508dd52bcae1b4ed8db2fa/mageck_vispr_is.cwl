class: CommandLineTool
id: mageck_vispr_is.cwl
inputs:
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_comprehensive
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_quality
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_control
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
  dockerPull: quay.io/biocontainers/mageck-vispr:0.5.6--py_0
cwlVersion: v1.1
baseCommand:
- mageck-vispr
- is
