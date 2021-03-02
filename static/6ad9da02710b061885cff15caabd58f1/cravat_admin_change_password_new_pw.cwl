class: CommandLineTool
id: cravat_admin_change_password_new_pw.cwl
inputs:
- id: in_cravat_admin
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_change_password
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_username
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_cur_pw
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_new_pw
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- cravat-admin
- change-password
- new_pw
