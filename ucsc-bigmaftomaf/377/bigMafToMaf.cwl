class: CommandLineTool
id: ../../../bigMafToMaf.cwl
inputs:
- id: big_maf_dot_bb
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file_dot_maf
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bigMafToMaf
