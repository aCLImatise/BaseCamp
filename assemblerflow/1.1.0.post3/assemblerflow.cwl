class: CommandLineTool
id: ../../../assemblerflow.cwl
inputs:
- id: in_debug
  doc: Set log to debug mode
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- assemblerflow
