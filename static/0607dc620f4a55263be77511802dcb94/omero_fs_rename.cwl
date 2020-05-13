class: CommandLineTool
id: omero_fs_rename.cwl
inputs:
- id: fileset
  doc: 'Fileset which should be renamed: ID or Fileset:ID'
  type: File
  inputBinding:
    position: 0
- id: no_move
  doc: do not move original files and import log
  type: boolean
  inputBinding:
    prefix: --no-move
outputs: []
cwlVersion: v1.1
baseCommand:
- omero
- fs
- rename
