class: CommandLineTool
id: kill.cwl
inputs:
- id: in_signal
  doc: specify the name or number of the signal to be sent
  type: long
  inputBinding:
    prefix: --signal
- id: in_list
  doc: list signal names, or convert signal names to/from numbers
  type: boolean
  inputBinding:
    prefix: --list
- id: in_table
  doc: print a table of signal information
  type: boolean
  inputBinding:
    prefix: --table
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- kill
