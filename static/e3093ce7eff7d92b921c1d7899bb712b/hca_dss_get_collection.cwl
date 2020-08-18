class: CommandLineTool
id: ../../../hca_dss_get_collection.cwl
inputs:
- id: uuid
  doc: A RFC4122-compliant ID for the collection.
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
- get-collection
