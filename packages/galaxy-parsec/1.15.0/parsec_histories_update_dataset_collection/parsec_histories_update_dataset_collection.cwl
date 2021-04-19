class: CommandLineTool
id: parsec_histories_update_dataset_collection.cwl
inputs:
- id: in_deleted
  doc: Mark or unmark history dataset collection as deleted
  type: boolean?
  inputBinding:
    prefix: --deleted
- id: in_name
  doc: Replace history dataset collection name with the given string
  type: string?
  inputBinding:
    prefix: --name
- id: in_visible
  doc: Mark or unmark history dataset collection as visible
  type: boolean?
  inputBinding:
    prefix: --visible
- id: in_dataset_collection_id
  doc: Update history dataset collection metadata. Some of the attributes that
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- parsec
- histories
- update_dataset_collection
