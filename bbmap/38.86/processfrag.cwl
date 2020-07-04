class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/processfrag.sh.cwl
inputs:
- id: process_frags_dots_h
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- processfrag.sh
