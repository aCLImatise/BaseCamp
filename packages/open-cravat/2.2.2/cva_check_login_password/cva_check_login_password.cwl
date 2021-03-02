class: CommandLineTool
id: cva_check_login_password.cwl
inputs:
- id: in_cva
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_check_login
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_username
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_password
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
  dockerPull: quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- cva
- check-login
- password
