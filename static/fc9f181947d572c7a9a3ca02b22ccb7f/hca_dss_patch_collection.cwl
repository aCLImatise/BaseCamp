class: CommandLineTool
id: hca_dss_patch_collection.cwl
inputs:
- id: in_add_contents
  doc: List of new items to add to the collection. Items are de-duplicated (if an
    identical item is already present in the collection or given multiple times, it
    will only be added once).
  type: string?
  inputBinding:
    prefix: --add-contents
- id: in_description
  doc: New description for the collection.
  type: string?
  inputBinding:
    prefix: --description
- id: in_details
  doc: New details for the collection.
  type: string?
  inputBinding:
    prefix: --details
- id: in_name
  doc: New name for the collection.
  type: string?
  inputBinding:
    prefix: --name
- id: in_remove_contents
  doc: List of items to remove from the collection. Items must match exactly to be
    removed. Items not found in the collection are ignored.
  type: string?
  inputBinding:
    prefix: --remove-contents
- id: in_uuid
  doc: A RFC4122-compliant ID of the collection to update.
  type: long?
  inputBinding:
    prefix: --uuid
- id: in_replica
  doc: Replica to update the collection on. Updates are propagated to other replicas.
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
- patch-collection
