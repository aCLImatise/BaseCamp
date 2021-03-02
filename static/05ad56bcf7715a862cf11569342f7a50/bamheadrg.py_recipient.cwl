class: CommandLineTool
id: bamheadrg.py_recipient.cwl
inputs:
- id: in_s
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_d
  doc: ''
  type: string?
  inputBinding:
    prefix: -d
- id: in_r
  doc: ''
  type: string?
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bamkit:16.07.26--py_0
cwlVersion: v1.1
baseCommand:
- bamheadrg.py
- recipient
