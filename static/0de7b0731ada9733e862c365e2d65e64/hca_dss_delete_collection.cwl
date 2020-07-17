class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hca_dss_delete_collection.cwl
inputs:
- id: uuid
  doc: A RFC4122-compliant ID for the collection.
  type: string
  inputBinding:
    prefix: --uuid
- id: replica
  doc: Replica to delete from.
  type: string
  inputBinding:
    prefix: --replica
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- delete-collection
