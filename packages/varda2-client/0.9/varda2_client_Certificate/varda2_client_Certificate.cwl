class: CommandLineTool
id: varda2_client_Certificate.cwl
inputs:
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_c
  doc: ''
  type: string?
  inputBinding:
    prefix: -c
- id: in_s
  doc: ''
  type: string?
  inputBinding:
    prefix: -s
- id: in_p
  doc: ''
  type: string?
  inputBinding:
    prefix: -p
- id: in_varda_two_client
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/varda2-client:0.9--py_0
cwlVersion: v1.1
baseCommand:
- varda2-client
- Certificate
