class: CommandLineTool
id: textfile.sh.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: start_line
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: stop_line
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- textfile.sh
