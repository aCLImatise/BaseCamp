class: CommandLineTool
id: parsec_libraries_copy_from_dataset.cwl
inputs:
- id: in_folder_id
  doc: "id of the folder where to place the uploaded files. If not\nprovided, the\
    \ root folder will be used"
  type: Directory?
  inputBinding:
    prefix: --folder_id
- id: in_message
  doc: message for copying action
  type: string?
  inputBinding:
    prefix: --message
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
- copy_from_dataset
