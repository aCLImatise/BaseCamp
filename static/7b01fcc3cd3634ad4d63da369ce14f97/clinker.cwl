class: CommandLineTool
id: clinker.cwl
inputs:
- id: in_w
  doc: ''
  type: string?
  inputBinding:
    prefix: -w
- id: in_h
  doc: ''
  type: string?
  inputBinding:
    prefix: -h
- id: in_run
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
  dockerPull: quay.io/biocontainers/clinker:1.32--1
cwlVersion: v1.1
baseCommand:
- clinker
