class: CommandLineTool
id: parsec_histories_delete_dataset_collection.cwl
inputs:
- id: in_dataset_collection_id
  doc: Mark corresponding dataset collection as deleted.
  type: string
  inputBinding:
    position: 0
- id: in_none
  doc: 'Options:'
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
- delete_dataset_collection
