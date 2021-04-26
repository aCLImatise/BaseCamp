class: CommandLineTool
id: vg.cwl
inputs:
- id: in_command
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
  dockerPull: quay.io/biocontainers/vg:1.32.0--h9ee0642_0
cwlVersion: v1.1
baseCommand:
- vg
