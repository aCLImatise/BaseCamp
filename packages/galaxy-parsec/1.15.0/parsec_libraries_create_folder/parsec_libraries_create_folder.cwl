class: CommandLineTool
id: parsec_libraries_create_folder.cwl
inputs:
- id: in_description
  doc: description of the new folder in the data library
  type: Directory?
  inputBinding:
    prefix: --description
- id: in_base_folder_id
  doc: "id of the folder where to create the new folder. If\nnot provided, the root\
    \ folder will be used"
  type: Directory?
  inputBinding:
    prefix: --base_folder_id
- id: in_folder
  doc: 'Options:'
  type: Directory
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
- libraries
- create_folder
