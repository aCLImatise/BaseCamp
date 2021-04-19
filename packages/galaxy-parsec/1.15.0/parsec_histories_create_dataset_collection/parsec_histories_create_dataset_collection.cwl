class: CommandLineTool
id: parsec_histories_create_dataset_collection.cwl
inputs:
- id: in_collection_description
  doc: Create a new dataset collection
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
- create_dataset_collection
