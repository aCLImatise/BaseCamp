class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/igvtools.cwl
inputs:
- id: command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: file_slash_dir
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: other
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- igvtools
