class: CommandLineTool
id: gridss.cwl
inputs:
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_time
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_prog
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_args
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
  dockerPull: quay.io/biocontainers/gridss:2.10.2--0
cwlVersion: v1.1
baseCommand:
- gridss
