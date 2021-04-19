class: CommandLineTool
id: parsec_libraries_get_folders.cwl
inputs:
- id: in_folder_id
  doc: filter for folder by folder id
  type: Directory?
  inputBinding:
    prefix: --folder_id
- id: in_name
  doc: "filter for folder by name. For ``name`` specify the full\npath of the folder\
    \ starting from the library's root\nfolder, e.g. ``/subfolder/subsubfolder``."
  type: File?
  inputBinding:
    prefix: --name
- id: in_library_id
  doc: ''
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
- libraries
- get_folders
