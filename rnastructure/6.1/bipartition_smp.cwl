class: CommandLineTool
id: ../../../bipartition_smp.cwl
inputs:
- id: bi_partition
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seq_file_one
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: seq_file_two
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: pfs_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- bipartition-smp
