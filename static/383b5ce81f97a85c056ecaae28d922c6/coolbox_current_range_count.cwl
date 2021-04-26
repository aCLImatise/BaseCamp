class: CommandLineTool
id: coolbox_current_range_count.cwl
inputs:
- id: in_value
  doc: ''
  type: string
  inputBinding:
    position: 0
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
- count
