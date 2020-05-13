class: CommandLineTool
id: kill.cwl
inputs:
- id: signal
  doc: specify the name or number of the signal to be sent
  type: string
  inputBinding:
    prefix: --signal
- id: list
  doc: signal names, or convert signal names to/from numbers
  type: string
  inputBinding:
    prefix: --list
- id: table
  doc: a table of signal information
  type: string
  inputBinding:
    prefix: --table
outputs: []
cwlVersion: v1.1
baseCommand:
- kill
