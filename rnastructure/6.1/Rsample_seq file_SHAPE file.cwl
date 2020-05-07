class: CommandLineTool
id: Rsample_seq file_SHAPE file.cwl
inputs:
- id: pfs_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- Rsample
- seq file
- SHAPE file
