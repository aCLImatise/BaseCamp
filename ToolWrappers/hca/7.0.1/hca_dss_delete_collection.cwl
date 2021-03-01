class: CommandLineTool
id: hca_dss_delete_collection.cwl
inputs:
- id: in_uuid
  doc: A RFC4122-compliant ID for the collection.
  type: long?
  inputBinding:
    prefix: --uuid
- id: in_replica
  doc: Replica to delete from.
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
- delete-collection
