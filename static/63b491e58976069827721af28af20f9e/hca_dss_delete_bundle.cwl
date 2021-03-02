class: CommandLineTool
id: hca_dss_delete_bundle.cwl
inputs:
- id: in_reason
  doc: User-friendly reason for the bundle or timestamp-specfic bundle deletion.
  type: string?
  inputBinding:
    prefix: --reason
- id: in_uuid
  doc: A RFC4122-compliant ID for the bundle.
  type: long?
  inputBinding:
    prefix: --uuid
- id: in_replica
  doc: Replica to write to.
  type: string?
  inputBinding:
    prefix: --replica
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- delete-bundle
