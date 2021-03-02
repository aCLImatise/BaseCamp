class: CommandLineTool
id: oc_store_new_account.cwl
inputs:
- id: in_username
  doc: use your email as your username.
  type: string
  inputBinding:
    position: 0
- id: in_password
  doc: this is your password.
  type: string
  inputBinding:
    position: 1
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
- new-account
