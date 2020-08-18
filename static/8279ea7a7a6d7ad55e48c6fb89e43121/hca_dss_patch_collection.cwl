class: CommandLineTool
id: ../../../hca_dss_patch_collection.cwl
inputs:
- id: add_contents
  doc: List of new items to add to the collection. Items are de-duplicated (if an
    identical item is already present in the collection or given multiple times, it
    will only be added once).
  type: string
  inputBinding:
    prefix: --add-contents
- id: description
  doc: New description for the collection.
  type: string
  inputBinding:
    prefix: --description
- id: details
  doc: New details for the collection.
  type: string
  inputBinding:
    prefix: --details
- id: name
  doc: New name for the collection.
  type: string
  inputBinding:
    prefix: --name
- id: remove_contents
  doc: List of items to remove from the collection. Items must match exactly to be
    removed. Items not found in the collection are ignored.
  type: string
  inputBinding:
    prefix: --remove-contents
- id: uuid
  doc: A RFC4122-compliant ID of the collection to update.
  type: string
  inputBinding:
    prefix: --uuid
- id: replica
  doc: Replica to update the collection on. Updates are propagated to other replicas.
  type: string
  inputBinding:
    prefix: --replica
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
- dss
- patch-collection
