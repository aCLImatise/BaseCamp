class: CommandLineTool
id: nohead.cwl
inputs:
- id: in_lines
  doc: suppress NUM lines (default 1)
  type: long
  inputBinding:
    prefix: --lines
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nohead
