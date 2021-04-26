class: CommandLineTool
id: coolbox_current_range_insert.cwl
inputs:
- id: in_index
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_object
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/coolbox:0.3.7--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- coolbox
- current_range
- insert
