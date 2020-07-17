class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/omero_fs_mkdir.cwl
inputs:
- id: parents
  doc: ensure whole path exists
  type: boolean
  inputBinding:
    prefix: --parents
- id: new_dir
  doc: directory to create in the repository
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- fs
- mkdir
