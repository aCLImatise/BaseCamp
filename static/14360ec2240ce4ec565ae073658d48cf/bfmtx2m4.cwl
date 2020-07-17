class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bfmtx2m4.pl_this.cwl
inputs:
- id: no
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: such
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: or
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: directory
  doc: ''
  type: Directory
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- bfmtx2m4.pl
- this
