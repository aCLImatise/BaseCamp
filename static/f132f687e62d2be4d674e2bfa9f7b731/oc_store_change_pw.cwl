class: CommandLineTool
id: oc_store_change_pw.cwl
inputs:
- id: in_username
  doc: username
  type: string
  inputBinding:
    position: 0
- id: in_cur_pw
  doc: current password
  type: string
  inputBinding:
    position: 1
- id: in_new_pw
  doc: new password
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- oc
- store
- change-pw
