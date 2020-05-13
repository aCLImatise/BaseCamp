class: CommandLineTool
id: omero_fs_mkdir.cwl
inputs:
- id: new_dir
  doc: directory to create in the repository
  type: string
  inputBinding:
    position: 0
- id: parents
  doc: ensure whole path exists
  type: boolean
  inputBinding:
    prefix: --parents
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- fs
- mkdir
