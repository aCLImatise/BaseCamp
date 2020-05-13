class: CommandLineTool
id: partition_sequence file.cwl
inputs:
- id: pfs_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- partition
- sequence file
