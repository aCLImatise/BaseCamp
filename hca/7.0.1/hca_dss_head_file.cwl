class: CommandLineTool
id: ../../../hca_dss_head_file.cwl
inputs:
- id: uuid
  doc: A RFC4122-compliant ID for the file.
  type: string
  inputBinding:
    prefix: --uuid
- id: replica
  doc: Replica to fetch from.
  type: string
  inputBinding:
    prefix: --replica
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- head-file
