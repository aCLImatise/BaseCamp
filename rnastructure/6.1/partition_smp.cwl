class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/partition_smp.cwl
inputs:
- id: partition
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: pfs_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- partition-smp
