class: CommandLineTool
id: coolbox_current_range_index.cwl
inputs:
- id: in_value
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_start
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_stop
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/coolbox:0.3.5--py_0
cwlVersion: v1.1
baseCommand:
- coolbox
- current_range
- index
