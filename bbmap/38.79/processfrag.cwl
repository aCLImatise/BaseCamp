class: CommandLineTool
id: processfrag.sh.cwl
inputs:
- id: process_frag_ssh
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
