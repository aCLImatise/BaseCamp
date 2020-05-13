class: CommandLineTool
id: bipartition_seq file 1_pfs file.cwl
inputs:
- id: seqfile2
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
- bipartition
- seq file 1
- pfs file
