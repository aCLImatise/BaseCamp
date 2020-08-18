class: CommandLineTool
id: ../../../hca_dss_delete_bundle.cwl
inputs:
- id: reason
  doc: User-friendly reason for the bundle or timestamp-specfic bundle deletion.
  type: string
  inputBinding:
    prefix: --reason
- id: uuid
  doc: A RFC4122-compliant ID for the bundle.
  type: string
  inputBinding:
    prefix: --uuid
- id: replica
  doc: Replica to write to.
  type: string
  inputBinding:
    prefix: --replica
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- delete-bundle
