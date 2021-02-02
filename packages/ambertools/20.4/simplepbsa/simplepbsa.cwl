class: CommandLineTool
id: simplepbsa.cwl
inputs:
- id: in_is_required
  doc: is required
  type: File
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- simplepbsa
