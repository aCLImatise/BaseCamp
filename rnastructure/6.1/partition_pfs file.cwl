class: CommandLineTool
id: partition_pfs file.cwl
inputs:
- id: sequence_file
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
- partition
- pfs file
