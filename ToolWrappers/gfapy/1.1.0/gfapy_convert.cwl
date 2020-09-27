class: CommandLineTool
id: gfapy_convert.cwl
inputs:
- id: in_filename
  doc: 'optional arguments:'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gfapy-convert
