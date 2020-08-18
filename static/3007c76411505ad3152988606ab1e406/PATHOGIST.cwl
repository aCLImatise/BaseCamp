class: CommandLineTool
id: ../../../PATHOGIST.cwl
inputs:
- id: loglevel
  doc: Set the logging level
  type: string
  inputBinding:
    prefix: --loglevel
outputs: []
cwlVersion: v1.1
baseCommand:
- PATHOGIST
