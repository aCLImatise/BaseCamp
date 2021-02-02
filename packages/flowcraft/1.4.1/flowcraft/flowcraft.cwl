class: CommandLineTool
id: ../../../flowcraft.cwl
inputs:
- id: in_debug
  doc: Set log to debug mode
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- flowcraft
