class: CommandLineTool
id: ../../../wdl.cwl
inputs:
- id: in_debug
  doc: Open the floodgates
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_no_color
  doc: Don't colorize output
  type: boolean
  inputBinding:
    prefix: --no-color
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- wdl
