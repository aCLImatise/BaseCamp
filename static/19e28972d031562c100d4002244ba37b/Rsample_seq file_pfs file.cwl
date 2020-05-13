class: CommandLineTool
id: Rsample_seq file_pfs file.cwl
inputs:
- id: shapefile
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pfs_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- Rsample
- seq file
- pfs file
