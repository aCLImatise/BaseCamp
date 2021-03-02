class: CommandLineTool
id: cva_publish.cwl
inputs:
- id: in_data
  doc: publishes module with data.
  type: boolean?
  inputBinding:
    prefix: --data
- id: in_code
  doc: publishes module without data.
  type: boolean?
  inputBinding:
    prefix: --code
- id: in_user
  doc: user to publish as. Typically your email.
  type: string?
  inputBinding:
    prefix: --user
- id: in_password
  doc: password for the user. Enter at prompt if missing.
  type: string?
  inputBinding:
    prefix: --password
- id: in_force_yes
  doc: overrides yes to overwrite question
  type: boolean?
  inputBinding:
    prefix: --force-yes
- id: in_overwrite
  doc: overwrites a published module/version
  type: boolean?
  inputBinding:
    prefix: --overwrite
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
- publish
