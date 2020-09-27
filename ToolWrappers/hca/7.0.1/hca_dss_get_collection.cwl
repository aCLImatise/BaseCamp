class: CommandLineTool
id: hca_dss_get_collection.cwl
inputs:
- id: in_uuid
  doc: A RFC4122-compliant ID for the collection.
  type: long
  inputBinding:
    prefix: --uuid
- id: in_replica
  doc: Replica to fetch from.
  type: string
  inputBinding:
    prefix: --replica
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hca
- dss
- get-collection
