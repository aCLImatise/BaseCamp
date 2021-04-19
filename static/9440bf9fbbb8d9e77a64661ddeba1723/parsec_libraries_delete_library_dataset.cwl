class: CommandLineTool
id: parsec_libraries_delete_library_dataset.cwl
inputs:
- id: in_purged
  doc: Indicate that the dataset should be purged (permanently deleted)
  type: boolean?
  inputBinding:
    prefix: --purged
- id: in_library_id
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dataset_id
  doc: ''
  type: string
  inputBinding:
    position: 1
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
- libraries
- delete_library_dataset
