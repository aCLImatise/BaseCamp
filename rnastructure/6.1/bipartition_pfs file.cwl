class: CommandLineTool
id: bipartition_pfs file.cwl
inputs:
- id: seqfile1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seqfile2
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
- bipartition
- pfs file
