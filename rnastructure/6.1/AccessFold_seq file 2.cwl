class: CommandLineTool
id: AccessFold_seq file 2.cwl
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
- id: ct_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- AccessFold
- seq file 2
