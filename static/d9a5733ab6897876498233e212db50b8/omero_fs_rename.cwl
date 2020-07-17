class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/omero_fs_rename.cwl
inputs:
- id: no_move
  doc: do not move original files and import log
  type: boolean
  inputBinding:
    prefix: --no-move
- id: fileset
  doc: 'Fileset which should be renamed: ID or Fileset:ID'
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- fs
- rename
