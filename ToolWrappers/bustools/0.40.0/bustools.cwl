class: CommandLineTool
id: bustools.cwl
inputs:
- id: in_cmd
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bustools
